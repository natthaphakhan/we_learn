import 'package:flutter/material.dart';

class DropdownNewsFilter1 extends StatefulWidget {
  const DropdownNewsFilter1({Key? key}) : super(key: key);

  @override
  _DropdownNewsFilter1State createState() => _DropdownNewsFilter1State();
}

class _DropdownNewsFilter1State extends State<DropdownNewsFilter1> {
  String dropdownValue2 = 'ใหม่ล่าสุด';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      width: 318,
      height: 36,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey.withOpacity(0.2))),
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
        items: <String>['ใหม่ล่าสุด', 'Item1', 'Item2', 'Item3']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}

class DropdownNewsFilter2 extends StatefulWidget {
  const DropdownNewsFilter2({Key? key}) : super(key: key);

  @override
  _DropdownNewsFilter2State createState() => _DropdownNewsFilter2State();
}

class _DropdownNewsFilter2State extends State<DropdownNewsFilter2> {
  String dropdownValue2 = 'เลือกประเภท';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      width: 318,
      height: 36,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey.withOpacity(0.2))),
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
    );
  }
}