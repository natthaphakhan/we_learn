import 'package:flutter/material.dart';

class BoxSearch extends StatefulWidget {
  @override
  _BoxSearchState createState() => _BoxSearchState();
}

class _BoxSearchState extends State<BoxSearch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 318,
      height: 36,
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        elevation: 2,
        child: TextField(
          decoration: InputDecoration(
            // suffixIcon: IconButton(
            //     onPressed: () {
            // streamclr.add(true);
            // },
            // icon: Icon(Icons.arrow_forward_ios_rounded)),
            hintText: "ค้นหาคอร์สเรียน",
            prefixIcon: Icon(Icons.search,
                color: Color.fromRGBO(199, 199, 199, 1), size: 14),
            hintStyle: TextStyle(
                color: Color.fromRGBO(199, 199, 199, 1), fontSize: 14),
            contentPadding: EdgeInsets.zero,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              borderSide: BorderSide(color: Colors.white),
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
