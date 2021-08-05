import 'package:flutter/material.dart';

class Result1 extends StatefulWidget {
  const Result1({Key? key}) : super(key: key);

  @override
  _Result1State createState() => _Result1State();
}

class _Result1State extends State<Result1> {
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
                          Image.asset('assets/gun.png'),
                          Text(
                            'ยอดสมัคร',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Text('15 คอร์ส'),
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
                          Image.asset('assets/gun.png'),
                          Text(
                            'ยอดสมัคร',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Text('15 คอร์ส'),
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
                          Image.asset('assets/gun.png'),
                          Text(
                            'ยอดสมัคร',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Text('15 คอร์ส'),
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
