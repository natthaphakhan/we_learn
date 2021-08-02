import 'package:flutter/material.dart';

class ButtonSignin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 154,
      height: 41,
      child: ElevatedButton(
        onPressed: () {
          
        },
        child: Center(
          child: Text(
            'เข้าสู่ระบบ',
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