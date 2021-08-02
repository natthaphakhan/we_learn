import 'package:flutter/material.dart';
import 'package:we_learn/page/pin/pin_1.dart';

class ButtonSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 154,
      height: 41,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Pin1()),
          );
        },
        child: Center(
          child: Text(
            'สมัครสมาชิก',
            style: TextStyle(
                fontSize: 16, color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: Color.fromRGBO(111, 116, 183, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(33.0),
          ),
        ),
      ),
    );
  }
}
