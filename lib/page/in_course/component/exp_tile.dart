import 'package:flutter/material.dart';

class ExpTile extends StatelessWidget {
  final String _title;
  ExpTile(this._title);

  Widget episode(int n) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.play_circle,
              size: 18,
              color: Colors.grey,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'ตอนที่ ${(n)} ความหลากหลายในการทำงาน\n(00:00:48)',
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ExpansionTile(
        textColor: Color.fromRGBO(111, 116, 183, 1),
        iconColor: Color.fromRGBO(111, 116, 183, 1),
        title: Text(
          _title,
          style: TextStyle(fontSize: 14),
        ),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.play_circle,
                    size: 18,
                    color: Color.fromRGBO(111, 116, 183, 1),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'ตอนที่ 1 ความหลากหลายในการทำงาน\n(00:00:48)',
                    style: TextStyle(fontSize: 12),
                  ),
                  Expanded(
                    child: SizedBox(),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'ดูตัวอย่าง',
                      style: TextStyle(
                          fontSize: 12,
                          color: Color.fromRGBO(111, 116, 183, 1)),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          ),
          episode(2),
          episode(3),
        ],
      ),
    );
  }
}
