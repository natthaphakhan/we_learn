import 'package:flutter/material.dart';

class CheckResult extends StatefulWidget {
  const CheckResult({ Key? key }) : super(key: key);

  @override
  _CheckResultState createState() => _CheckResultState();
}

class _CheckResultState extends State<CheckResult> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text('check result')
    );
  }
}