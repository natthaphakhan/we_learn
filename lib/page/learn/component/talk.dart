import 'package:flutter/material.dart';

class Talk extends StatefulWidget {
  const Talk({ Key? key }) : super(key: key);

  @override
  _TalkState createState() => _TalkState();
}

class _TalkState extends State<Talk> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text('talk')
    );
  }
}