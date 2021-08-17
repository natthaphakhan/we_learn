import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

// ignore: must_be_immutable
class TxtBox extends StatefulWidget {
  double wd;
  Color cl;
  String ht;
  TxtBox(this.wd, this.cl, this.ht);

  @override
  _TxtBoxState createState() => _TxtBoxState();
}

class _TxtBoxState extends State<TxtBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.wd,
      height: 40,
      child: TextField(
        decoration: InputDecoration(
          hintText: widget.ht,
          hintStyle: TextStyle(color: widget.cl, fontSize: 14),
          contentPadding: EdgeInsets.only(left: 20),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: Colors.grey[300]!),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: Colors.grey, width: 1),
          ),
        ),
      ),
    );
  }
}

class DateBox extends StatefulWidget {
  const DateBox({Key? key}) : super(key: key);

  @override
  _DateBoxState createState() => _DateBoxState();
}

class _DateBoxState extends State<DateBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 40,
      child: TextField(
        decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: () {
              DatePicker.showDatePicker(context,
                  showTitleActions: true,
                  minTime: DateTime(1980, 1, 1),
                  maxTime: DateTime(2022, 12, 31), onChanged: (date) {
                print('change $date');
              }, onConfirm: (date) {
                print('confirm $date');
              }, currentTime: DateTime.now(), locale: LocaleType.th);
            },
            icon: Icon(
              Icons.calendar_today_rounded,
              color: Colors.grey,
            ),
          ),
          hintText: DateTime.now().toString(),
          hintStyle: TextStyle(color: Colors.black, fontSize: 14),
          contentPadding: EdgeInsets.only(left: 20),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: Colors.grey[300]!),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: Colors.grey, width: 1),
          ),
        ),
      ),
    );
  }
}
