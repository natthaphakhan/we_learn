import 'package:flutter/material.dart';
import 'package:we_learn/page/sign_in.dart';

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
      home: SignIn(),
    );
  }
}
