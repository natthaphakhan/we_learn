import 'package:flutter/material.dart';
import 'package:we_learn/page/in_course/in_course.dart';
import 'package:we_learn/page/learn/learn.dart';
// import 'package:we_learn/page/pin/pin_1.dart';
import 'package:we_learn/page/sign_in/sign_in.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'NotoSansThai'),
      debugShowCheckedModeBanner: false,
      // home: SignIn(),
      home: Learn(),
    );
  }
}
