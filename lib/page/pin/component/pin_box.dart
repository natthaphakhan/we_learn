import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinBox extends StatefulWidget {
  const PinBox({Key? key}) : super(key: key);

  @override
  _PinBoxState createState() => _PinBoxState();
}

class _PinBoxState extends State<PinBox> {
  TextEditingController textEditingController = TextEditingController();

  String currentText = "";
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Container(
        padding: EdgeInsets.zero,
        child: PinCodeTextField(
          textStyle: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(111, 116, 183, 1)),
          boxShadows: [
            BoxShadow(color: Colors.grey),
            BoxShadow(
              color: Colors.grey[50]!,
              spreadRadius: -0.8,
              blurRadius: 3,
            )
          ],
          appContext: context,
          length: 4,
          blinkWhenObscuring: true,
          animationType: AnimationType.none,
          pinTheme: PinTheme(
            shape: PinCodeFieldShape.box,
            borderWidth: 0,
            borderRadius: BorderRadius.circular(15),
            fieldHeight: 50,
            fieldWidth: 72,
            selectedColor: Color.fromRGBO(111, 116, 183, 1),
          ),
          cursorColor: Color.fromRGBO(111, 116, 183, 1),
          animationDuration: Duration(milliseconds: 0),
          enableActiveFill: false,
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
