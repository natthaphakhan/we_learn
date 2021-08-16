import 'package:flutter/material.dart';
import 'package:we_learn/page/my_course/my_course.dart';
import 'package:we_learn/page/noti/noti.dart';

class OvMyCer extends StatefulWidget {
  const OvMyCer({Key? key}) : super(key: key);

  @override
  _OvMyCerState createState() => _OvMyCerState();
}

class _OvMyCerState extends State<OvMyCer> {
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
                    'ประกาศนียบัตร',
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
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      children: [
                        Text(
                          'ประกาศนียบัตรทั้งหมด 5 รายการ',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  AllCourseCard2(1.0, Colors.green, true),
                  AllCourseCard2(1.0, Colors.green, true),
                  AllCourseCard2(1.0, Colors.green, true),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
