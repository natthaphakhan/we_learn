import 'package:flutter/material.dart';

class BoxSearchNews extends StatefulWidget {
  @override
  _BoxSearchNewsState createState() => _BoxSearchNewsState();
}

class _BoxSearchNewsState extends State<BoxSearchNews> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 318,
      height: 36,
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        elevation: .5,
        child: TextField(
          decoration: InputDecoration(
            // suffixIcon: IconButton(
            //     onPressed: () {
            // streamclr.add(true);
            // },
            // icon: Icon(Icons.arrow_forward_ios_rounded)),
            hintText: "ข่าวสารและบทความ",
            prefixIcon: Icon(Icons.search,
                color: Colors.grey, size: 16),
            hintStyle: TextStyle(
                color: Colors.grey, fontSize: 14),
            contentPadding: EdgeInsets.zero,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              borderSide: BorderSide(color: Colors.grey.withOpacity(0.2)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              borderSide:
                  BorderSide(color: Color.fromRGBO(111, 116, 183, 1), width: 1),
            ),
          ),
        ),
      ),
    );
  }
}
