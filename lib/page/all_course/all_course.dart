import 'package:flutter/material.dart';

class AllCourse extends StatefulWidget {
  const AllCourse({Key? key}) : super(key: key);

  @override
  _AllCourseState createState() => _AllCourseState();
}

class _AllCourseState extends State<AllCourse> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Image.asset('assets\menu_line_purple.png'),
        ),
      ),
    );
  }
}
