import 'package:flutter/material.dart';

class TechWithUs extends StatefulWidget {
  const TechWithUs({ Key? key }) : super(key: key);

  @override
  _TechWithUsState createState() => _TechWithUsState();
}

class _TechWithUsState extends State<TechWithUs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}

class SearchMyListinTech extends StatefulWidget {
  @override
  _SearchMyListinTechState createState() => _SearchMyListinTechState();
}

class _SearchMyListinTechState extends State<SearchMyListinTech> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 36,
      margin: EdgeInsets.symmetric(horizontal: 28),
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        elevation: 1,
        child: TextField(
          decoration: InputDecoration(
            hintText: "ค้นหารายการของฉัน",
            prefixIcon: Icon(Icons.search),
            hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
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