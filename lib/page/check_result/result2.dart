import 'package:flutter/material.dart';
import 'package:we_learn/page/in_course/in_course.dart';

class Result2 extends StatefulWidget {
  const Result2({Key? key}) : super(key: key);

  @override
  _Result2State createState() => _Result2State();
}

class _Result2State extends State<Result2> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Result2Card(),
        Result2Card(),
        Result2Card(),
      ],
    );
  }
}

class Result2Card extends StatefulWidget {
  @override
  _Result2CardState createState() => _Result2CardState();
}

class _Result2CardState extends State<Result2Card> {
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
          ),
        ),
      ),
    );
  }
}
