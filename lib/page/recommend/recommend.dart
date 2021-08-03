import 'package:flutter/material.dart';
import 'package:we_learn/page/all_course/all_course.dart';

import 'component/course_slide.dart';
import 'component/news_slide.dart';

class Recommend extends StatefulWidget {
  const Recommend({Key? key}) : super(key: key);

  @override
  _RecommendState createState() => _RecommendState();
}

class _RecommendState extends State<Recommend> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(28, 15, 28, 30),
          child: Row(
            children: [
              Text(
                'แนะนำสำหรับคุณ',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              Expanded(
                child: SizedBox(),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AllCourse()),
                  );
                },
                child: Text(
                  'ดูทั้งหมด',
                  style: TextStyle(
                      fontSize: 14, color: Color.fromRGBO(111, 116, 183, 1)),
                ),
              )
            ],
          ),
        ),
        Slide(),
        Container(
          margin: EdgeInsets.fromLTRB(28, 20, 28, 35),
          child: Row(
            children: [
              Text(
                'ข่าวสารและบทความ',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              Expanded(
                child: SizedBox(),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'ดูทั้งหมด',
                  style: TextStyle(
                      fontSize: 14, color: Color.fromRGBO(111, 116, 183, 1)),
                ),
              )
            ],
          ),
        ),
        NewsSlide(),
        Image.asset(
          'assets/img_bottom_reccom_page.png',
          scale: 1,
        )
      ],
    );
  }
}
