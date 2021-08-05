import 'package:flutter/material.dart';

class Result2 extends StatefulWidget {
  const Result2({Key? key}) : super(key: key);

  @override
  _Result2State createState() => _Result2State();
}

class _Result2State extends State<Result2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 5, 90),
              child: Icon(Icons.search),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    'Work With Diversity คิดต่างอย่างมีเหตุผลเพื่อ\nต่อยอดความสำเร็จในองค์กร'),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_today_rounded,
                            color: Colors.grey,
                            size: 16,
                          ),
                          Text(
                            'วันที่',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 60),
                            child: Text('10/7/2564 09.32 น.'),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset('assets/money.png'),
                          Text(
                            'ยอดขาย',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 36),
                            child: Text('30,000 บาท'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        Divider(
          thickness: .5,
          color: Colors.grey[400],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 5, 90),
              child: Icon(Icons.search),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    'Work With Diversity คิดต่างอย่างมีเหตุผลเพื่อ\nต่อยอดความสำเร็จในองค์กร'),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_today_rounded,
                            color: Colors.grey,
                            size: 16,
                          ),
                          Text(
                            'วันที่',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 60),
                            child: Text('10/7/2564 09.32 น.'),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset('assets/money.png'),
                          Text(
                            'ยอดขาย',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 36),
                            child: Text('30,000 บาท'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        Divider(
          thickness: .5,
          color: Colors.grey[400],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 5, 90),
              child: Icon(Icons.search),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    'Work With Diversity คิดต่างอย่างมีเหตุผลเพื่อ\nต่อยอดความสำเร็จในองค์กร'),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_today_rounded,
                            color: Colors.grey,
                            size: 16,
                          ),
                          Text(
                            'วันที่',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 60),
                            child: Text('10/7/2564 09.32 น.'),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset('assets/money.png'),
                          Text(
                            'ยอดขาย',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 36),
                            child: Text('30,000 บาท'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
