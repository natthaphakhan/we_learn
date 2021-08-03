import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MyCourse extends StatefulWidget {
  @override
  _MyCourseState createState() => _MyCourseState();
}

class _MyCourseState extends State<MyCourse> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: ListView(
        children: [
          Row(
            children: [
              Icon(Icons.play_circle_outline),
              SizedBox(
                width: 5,
              ),
              Text(
                'คอร์สเรียนของฉัน',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(30, 2, 0, 20),
            child: Text(
              'คอร์สเรียนทั้งหมด 3 รายการ',
              style: TextStyle(fontSize: 12),
            ),
          ),
          CourseProgress(0.45, Colors.yellow[700]!, false),
          Expanded(
              child: Divider(
            thickness: 1,
            color: Colors.grey[300],
          )),
          CourseProgress(1.0, Colors.green, true),
          Expanded(
              child: Divider(
            thickness: 1,
            color: Colors.grey[300],
          )),
          CourseProgress(1.0, Colors.green, true),
          Expanded(
              child: Divider(
            thickness: 1,
            color: Colors.grey[300],
          )),
        ],
      ),
    );
  }
}

class SearchMyCourse extends StatefulWidget {
  @override
  _SearchMyCourseState createState() => _SearchMyCourseState();
}

class _SearchMyCourseState extends State<SearchMyCourse> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 36,
      margin: EdgeInsets.symmetric(horizontal: 28),
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        elevation: 1,
        child: TextField(
          decoration: InputDecoration(
            hintText: "ค้นหาคอร์สเรียนของฉัน",
            prefixIcon: Icon(Icons.search),
            hintStyle: TextStyle(color: Colors.grey,fontSize: 14),
            contentPadding: EdgeInsets.zero,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              borderSide:
                  BorderSide(color: Color.fromRGBO(111, 116, 183, 1), width: 2),
            ),
          ),
        ),
      ),
    );
  }
}

class CourseProgress extends StatelessWidget {
  final double percen;
  final Color color;
  final bool complete;
  CourseProgress(this.percen, this.color, this.complete);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => Video()),
        // );
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 28),
        width: double.maxFinite,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                'assets/img_course_1.jpeg',
                fit: BoxFit.cover,
                width: 72,
                height: 72,
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      minVerticalPadding: 0,
                      contentPadding: EdgeInsets.symmetric(horizontal: 0),
                      title: Text(
                        'Photography Masterclass: A Complete Guide to Photography',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'หลักสูตรมาสเตอร์เตอร์คลาสแห่งการถ่ายภาพ: การถ่ายภาพเบื้องต้นฉบับสมบูรณ์',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: LinearPercentIndicator(
                        width: 250,
                        animation: true,
                        lineHeight: 10,
                        animationDuration: 1000,
                        percent: percen,
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        progressColor: color,
                      ),
                    ),
                    complete == true
                        ? Row(
                            children: [
                              Text(
                                ' สำเร็จการศึกษา',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                              Expanded(
                                child: SizedBox(),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.download,
                                      size: 16,
                                      color: Color.fromRGBO(111, 116, 183, 1),
                                    ),
                                    Text(
                                      'ประกาศนียบัตร',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Color.fromRGBO(
                                              111, 116, 183, 1)),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        : Text(
                            ' กำลังศึกษา ${(percen * 100)}%',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
