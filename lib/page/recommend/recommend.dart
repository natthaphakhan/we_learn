import 'package:flutter/material.dart';

class Recommend extends StatefulWidget {
  const Recommend({ Key? key }) : super(key: key);

  @override
  _RecommendState createState() => _RecommendState();
}

class _RecommendState extends State<Recommend> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('recommend')),
    );
  }
}