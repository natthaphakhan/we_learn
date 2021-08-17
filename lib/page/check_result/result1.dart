import 'package:flutter/material.dart';
import 'package:we_learn/page/in_course/in_course.dart';

class Result1 extends StatefulWidget {
  const Result1({Key? key}) : super(key: key);

  @override
  _Result1State createState() => _Result1State();
}

class _Result1State extends State<Result1> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Result1Card(),
        Result1Card(),
        Result1Card(),
      ],
    );
  }
}

class Result1Card extends StatefulWidget {
  @override
  _Result1CardState createState() => _Result1CardState();
}

class _Result1CardState extends State<Result1Card> {
  bool heartTap = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => InCourse()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Container(
          width: 319,
          height: 269,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(216, 216, 216, 0.7),
                offset: Offset(0, 3),
                blurRadius: 6,
                spreadRadius: -7)
          ]),
          child: Card(
            elevation: 0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 122,
                  width: double.maxFinite,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    child: Image.asset(
                      'assets/img_course_1.jpeg',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(13, 10, 13, 0),
                  child: ListTile(
                    minVerticalPadding: 0,
                    contentPadding: EdgeInsets.zero,
                    title: Text('Work With Diversity',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500)),
                    subtitle: Text(
                        'คิดต่างอย่างมีเหตุผลเพื่อต่อยอดความสำเร็จในองค์กร',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400)),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
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
          ),
        ),
      ),
    );
  }
}
