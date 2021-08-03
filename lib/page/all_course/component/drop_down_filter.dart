import 'package:flutter/material.dart';

class DropdownFilter1 extends StatefulWidget {
  const DropdownFilter1({Key? key}) : super(key: key);

  @override
  _DropdownFilter1State createState() => _DropdownFilter1State();
}

class _DropdownFilter1State extends State<DropdownFilter1> {
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

class DropdownFilter2 extends StatefulWidget {
  @override
  _DropdownFilter2State createState() => _DropdownFilter2State();
}

class _DropdownFilter2State extends State<DropdownFilter2> {
  String dropdownValue = 'เลือกหมวดหมู่';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey.withOpacity(0.2))),
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
    );
  }
}

class DropdownFilter3 extends StatefulWidget {
  const DropdownFilter3({Key? key}) : super(key: key);

  @override
  _DropdownFilter3State createState() => _DropdownFilter3State();
}

class _DropdownFilter3State extends State<DropdownFilter3> {
  String dropdownValue2 = 'เลือกประเภท';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey.withOpacity(0.2))),
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
    );
  }
}
