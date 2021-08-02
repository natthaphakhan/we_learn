import 'package:flutter/material.dart';

// textfield แบบต่าง ๆ

// field ทั่วไป
class TextBox extends StatelessWidget {
  final String _text;
  TextBox(this._text);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 318,
      height: 41,
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: _text,
          hintStyle:
              TextStyle(color: Color.fromRGBO(155, 155, 155, 1), fontSize: 16),
          contentPadding: EdgeInsets.only(left: 20),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: Colors.white.withOpacity(0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide:
                BorderSide(color: Color.fromRGBO(111, 116, 183, 1), width: 1),
          ),
        ),
      ),
    );
  }
}

// ช่องใส่รหัส
class PasswordBox extends StatefulWidget {
  const PasswordBox({Key? key}) : super(key: key);

  @override
  _PasswordBoxState createState() => _PasswordBoxState();
}

class _PasswordBoxState extends State<PasswordBox> {
  bool _isHidden = true;
  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 318,
      height: 41,
      child: TextField(
        obscureText: _isHidden,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            padding: EdgeInsets.zero,
            icon: _isHidden
                ? Icon(
                    Icons.visibility,
                    size: 20,
                  )
                : Icon(
                    Icons.visibility_off,
                    size: 20,
                  ),
            onPressed: () {
              _togglePasswordView();
            },
          ),
          hintText: 'รหัสผ่าน',
          hintStyle:
              TextStyle(color: Color.fromRGBO(155, 155, 155, 1), fontSize: 16),
          contentPadding: EdgeInsets.only(left: 20),
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: Colors.white.withOpacity(0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide:
                BorderSide(color: Color.fromRGBO(111, 116, 183, 1), width: 1),
          ),
        ),
      ),
    );
  }
}
