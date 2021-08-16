import 'package:flutter/material.dart';
import 'package:we_learn/page/in_test/in_test.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  Widget _buildPopupDialog(BuildContext context) {
    return new AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      content: new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "กิจกรรมข้อสอบ: Activity: Rules and Procedures",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text('กรุณาทำข้อสอบดังต่อไปนี้เพื่อเล่นวีดีโอต่อ:'),
          ),
          Row(
            children: [
              Container(
                height: 10.0,
                width: 20.0,
                decoration: new BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
              ),
              Text('จำนวนข้อสอบ: 10 ข้อ')
            ],
          ),
          Row(
            children: [
              Container(
                height: 10.0,
                width: 20.0,
                decoration: new BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
              ),
              Text('ระยะเวลา: ไม่จำกัดเวลา')
            ],
          ),
          Row(
            children: [
              Container(
                height: 10.0,
                width: 20.0,
                decoration: new BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
              ),
              Text('จำนวนครั้งที่ให้ทำ: ไม่จำกัด')
            ],
          ),
          Row(
            children: [
              Container(
                height: 10.0,
                width: 20.0,
                decoration: new BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
              ),
              Text('วิธีการคิดคะแนน: สูงสุด')
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Center(
                    child: Text(
                      'ดูต่อ',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey[200],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(33.0),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => InTest()),
                    );
                  },
                  child: Center(
                    child: Text(
                      'ทำข้อสอบ',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(111, 116, 183, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(33.0),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '*** ปกติหน้านี้ไม่มี ทำเพื่อ Test เข้าหน้าข้อสอบเท่านั้น ***',
          style: TextStyle(color: Colors.red),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 15),
          child: InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) => _buildPopupDialog(context),
              );
            },
            child: Text(
              '>>> เปิดข้อสอบ <<<',
              style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                  fontSize: 20),
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Text(
            '>>> เปิดกิจกรรมข้อสอบ <<<',
            style: TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
                fontSize: 20),
          ),
        ),
      ],
    );
  }
}
