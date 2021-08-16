import 'package:flutter/material.dart';
import 'package:we_learn/page/noti/noti.dart';
import 'package:we_learn/page/overall/overall_my_cer.dart';
import 'package:we_learn/page/overall/overall_my_course.dart';

class OverAll extends StatefulWidget {
  const OverAll({Key? key}) : super(key: key);

  @override
  _OverAllState createState() => _OverAllState();
}

class _OverAllState extends State<OverAll> {
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
                  padding: const EdgeInsets.only(left: 110),
                  child: Text(
                    'ภาพรวม',
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
            Container(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OvMyC()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('assets/movie.png'),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(5, 8, 0, 0),
                                child: Text(
                                  '5',
                                  style: TextStyle(
                                      fontSize: 60,
                                      color: Color.fromRGBO(111, 116, 183, 1)),
                                ),
                              ),
                            ],
                          ),
                          Text('กำลังศึกษาอยู่',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.grey))
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OvMyCer()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('assets/cer.png'),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(5, 8, 0, 0),
                                child: Text(
                                  '10',
                                  style: TextStyle(
                                      fontSize: 60,
                                      color: Color.fromRGBO(111, 116, 183, 1)),
                                ),
                              ),
                            ],
                          ),
                          Text('ประกาศนียบัตร',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.grey))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/score.png'),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 8, 0, 0),
                              child: Text(
                                '725',
                                style: TextStyle(
                                    fontSize: 60,
                                    color: Color.fromRGBO(111, 116, 183, 1)),
                              ),
                            ),
                          ],
                        ),
                        Text('คะแนนสะสม',
                            style: TextStyle(fontSize: 16, color: Colors.grey))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/gift.png'),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 8, 0, 0),
                              child: Text(
                                '2',
                                style: TextStyle(
                                    fontSize: 60,
                                    color: Color.fromRGBO(111, 116, 183, 1)),
                              ),
                            ),
                          ],
                        ),
                        Text('รางวัล',
                            style: TextStyle(fontSize: 16, color: Colors.grey))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 50),
                    child: Image.asset('assets/bottom_overall.png'),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
