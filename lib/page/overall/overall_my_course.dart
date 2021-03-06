import 'package:flutter/material.dart';
import 'package:we_learn/page/noti/noti.dart';
import 'package:we_learn/page/my_course/my_course.dart';

class OvMyC extends StatefulWidget {
  const OvMyC({Key? key}) : super(key: key);

  @override
  _OvMyCState createState() => _OvMyCState();
}

class _OvMyCState extends State<OvMyC> {
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
                  padding: const EdgeInsets.only(left: 90),
                  child: Text(
                    'กำลังศึกษาอยู่',
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
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: 
              [Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      children: [
                        Text(
                          'กำลังศึกษาอยู่ทั้งหมด 5 รายการ',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  AllCourseCard2(0.45, Colors.yellow[700]!, false),
                  AllCourseCard2(0.45, Colors.yellow[700]!, false),
                  AllCourseCard2(0.45, Colors.yellow[700]!, false),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
