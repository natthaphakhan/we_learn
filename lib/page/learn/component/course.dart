import 'package:flutter/material.dart';

class CoursePart extends StatefulWidget {
  const CoursePart({ Key? key }) : super(key: key);

  @override
  _CoursePartState createState() => _CoursePartState();
}

class _CoursePartState extends State<CoursePart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text('course')
    );
  }
}