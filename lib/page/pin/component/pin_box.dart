import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinBox extends StatefulWidget {
  const PinBox({Key? key}) : super(key: key);

  @override
  _PinBoxState createState() => _PinBoxState();
}

class _PinBoxState extends State<PinBox> {
  TextEditingController textEditingController = TextEditingController();

  // ignore: close_sinks
  StreamController<ErrorAnimationType>? errorController;

  bool hasError = false;
  String currentText = "";
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    errorController!.close();

    super.dispose();
  }

  snackBar(String? message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message!),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Container(
        padding: EdgeInsets.zero,
        child: PinCodeTextField(
          appContext: context,
          pastedTextStyle: TextStyle(
            color: Color.fromRGBO(111, 116, 183, 1),
            fontWeight: FontWeight.bold,
          ),
          length: 4,
          obscureText: false,
          blinkWhenObscuring: true,
          animationType: AnimationType.none,
          pinTheme: PinTheme(
            shape: PinCodeFieldShape.box,
            borderWidth: 0,
            borderRadius: BorderRadius.circular(15),
            fieldHeight: 50,
            fieldWidth: 72,
            selectedColor: Color.fromRGBO(111, 116, 183, 1),
            selectedFillColor: Color.fromRGBO(245, 245, 245, 1),
            activeFillColor: Color.fromRGBO(245, 245, 245, 1),
            inactiveFillColor: Color.fromRGBO(245, 245, 245, 1),
          ),
          cursorColor: Colors.black,
          animationDuration: Duration(milliseconds: 0),
          enableActiveFill: true,
          errorAnimationController: errorController,
          controller: textEditingController,
          keyboardType: TextInputType.number,
          onChanged: (value) {
            setState(
              () {
                currentText = value;
              },
            );
          },
        ),
      ),
    );
  }
}
