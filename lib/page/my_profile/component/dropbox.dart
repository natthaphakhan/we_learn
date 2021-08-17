import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DpBox extends StatefulWidget {
  Color cl;
  double wd;
  String txt;
  DpBox(this.cl, this.txt, this.wd);
  @override
  _DpBoxState createState() => _DpBoxState();
}

class _DpBoxState extends State<DpBox> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = widget.txt;

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: widget.wd,
      height: 40,
      child: DropdownButton(
        isExpanded: true,
        icon: Icon(
          Icons.arrow_forward_ios_rounded,
          color: Colors.grey.withOpacity(0.6),
        ),
        elevation: 1,
        value: dropdownValue,
        style: TextStyle(fontFamily: 'NotoSansThai', color: widget.cl),
        underline: SizedBox(),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        items: <String>[widget.txt, 'Item1', 'Item2', 'Item3']
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
