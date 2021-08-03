import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  @override
  _DropdownState createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  String dropdownValue = 'เลือกหมวดหมู่';

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(5),
      elevation: 1,
      child: Container(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        width: 154,
        height: 36,
        child: DropdownButton(
          isExpanded: true,
          icon: Icon(
            Icons.expand_more,
            color: Colors.grey.withOpacity(0.6),
          ),
          elevation: 1,
          value: dropdownValue,
          style: TextStyle(fontFamily: 'NotoSansThai', color: Colors.grey),
          underline: SizedBox(),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: <String>['เลือกหมวดหมู่', 'Item1', 'Item2', 'Item3']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class Dropdown2 extends StatefulWidget {
  const Dropdown2({Key? key}) : super(key: key);

  @override
  _Dropdown2State createState() => _Dropdown2State();
}

class _Dropdown2State extends State<Dropdown2> {
  String dropdownValue2 = 'เลือกประเภท';
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(5),
      elevation: 1,
      child: Container(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        width: 154,
        height: 36,
        child: DropdownButton(
          isExpanded: true,
          icon: Icon(
            Icons.expand_more,
            color: Color.fromRGBO(155, 155, 155, 1).withOpacity(0.6),
          ),
          elevation: 1,
          value: dropdownValue2,
          style: TextStyle(
              fontFamily: 'NotoSansThai',
              color: Color.fromRGBO(155, 155, 155, 1)),
          underline: SizedBox(),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue2 = newValue!;
            });
          },
          items: <String>['เลือกประเภท', 'Item1', 'Item2', 'Item3']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
