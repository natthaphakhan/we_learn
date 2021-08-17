import 'package:flutter/material.dart';
import 'package:we_learn/page/in_course/in_course.dart';
import 'package:we_learn/page/noti/noti.dart';

class CourseFrowmMe extends StatefulWidget {
  const CourseFrowmMe({Key? key}) : super(key: key);

  @override
  _CourseFrowmMeState createState() => _CourseFrowmMeState();
}

class _CourseFrowmMeState extends State<CourseFrowmMe> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 0,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Padding(
            padding: const EdgeInsets.only(left: 28),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Color.fromRGBO(111, 116, 183, 1),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Text(
                    'คอร์สเรียนจากฉัน',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                )
              ],
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 28),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Noti()),
                  );
                },
                child: Icon(
                  Icons.notifications_outlined,
                  color: Color.fromRGBO(111, 116, 183, 1),
                ),
              ),
            )
          ],
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'คอร์สเรียนทั้งหมด 3 รายการ',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: SizedBox(
                      width: 154,
                      height: 34,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Center(
                          child: Text(
                            'สร้างคอร์ส',
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
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [Icon(Icons.article_outlined), Text(' รายการ')],
                    ),
                  ),
                  CourseFromMeCard(),
                  CourseFromMeCard(),
                  CourseFromMeCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CourseFromMeCard extends StatefulWidget {
  @override
  _CourseFromMeCardState createState() => _CourseFromMeCardState();
}

class _CourseFromMeCardState extends State<CourseFromMeCard> {
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
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.online_prediction_outlined,
                        color: Colors.grey,
                      ),
                      Text(
                        '  คอร์สเรียนออนไลน์',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.info_outline_rounded,
                        color: Colors.grey,
                      ),
                      Text(
                        '  อนุมัติแล้ว',
                        style: TextStyle(color: Colors.green),
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
