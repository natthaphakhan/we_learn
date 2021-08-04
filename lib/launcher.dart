import 'package:flutter/material.dart';
import 'package:we_learn/page/check_result/check_result.dart';
import 'package:we_learn/page/course_from_me/course_from_me.dart';
import 'package:we_learn/page/faq/faq.dart';
import 'package:we_learn/page/my_course/my_course.dart';
import 'package:we_learn/page/my_list/my_list.dart';
import 'package:we_learn/page/my_profile/my_profile.dart';
import 'package:we_learn/page/overall/overall.dart';
import 'package:we_learn/page/recommend/recommend.dart';
import 'package:we_learn/page/search/search.dart';

import 'package:we_learn/page/sign_in/sign_in.dart';
import 'package:we_learn/page/teach_with_us/teach_with_us.dart';

import 'page/recommend/component/drop_down.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  bool check = false;

  List<Widget> _pageWidget = <Widget>[
    Recommend(),
    Search(),
    MyCourse(),
    MyList(),
    TechWithUs()
  ];

  int _currentIndex = 0;

  void _onItemTapped(int i) {
    setState(() {
      _currentIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Color.fromRGBO(0, 0, 0, 0),
              automaticallyImplyLeading: false,
              toolbarHeight: 180,
              flexibleSpace: Stack(
                children: [
                  Image.asset(
                    'assets/header.png',
                    fit: BoxFit.fitWidth,
                    width: double.maxFinite,
                    height: 147,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(28.5, 90, 28.5, 0),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        GestureDetector(
                          child: _currentIndex.toString().contains('0')
                              ? Text(
                                  'แนะนำ',
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 222, 39, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                                )
                              : Text(
                                  'แนะนำ',
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.7),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                          onTap: () {
                            _onItemTapped(0);
                          },
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        GestureDetector(
                          child: _currentIndex.toString().contains('1')
                              ? Text(
                                  'ค้นหา',
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 222, 39, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                                )
                              : Text(
                                  'ค้นหา',
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.7),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                          onTap: () {
                            _onItemTapped(1);
                          },
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        GestureDetector(
                          child: _currentIndex.toString().contains('2')
                              ? Text(
                                  'คอร์สเรียนของฉัน',
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 222, 39, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                                )
                              : Text(
                                  'คอร์สเรียนของฉัน',
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.7),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                          onTap: () {
                            _onItemTapped(2);
                          },
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        GestureDetector(
                          child: _currentIndex.toString().contains('3')
                              ? Text(
                                  'รายการของฉัน',
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 222, 39, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                                )
                              : Text(
                                  'รายการของฉัน',
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.7),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                          onTap: () {
                            _onItemTapped(3);
                          },
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        GestureDetector(
                          child: _currentIndex.toString().contains('4')
                              ? Text(
                                  'ร่วมสอนกับเรา',
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 222, 39, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                                )
                              : Text(
                                  'ร่วมสอนกับเรา',
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.7),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                          onTap: () {
                            _onItemTapped(4);
                          },
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(28.5, 20, 10, 0),
                    child: Row(
                      children: [
                        GestureDetector(
                          child: Image.asset(
                            'assets/menu_line.png',
                            width: 16.3,
                            height: 15.01,
                          ),
                          onTap: () => scaffoldKey.currentState!.openDrawer(),
                        ),
                        Expanded(
                          child: SizedBox(),
                        ),
                        IconButton(
                          onPressed: () {
                            //   Route route =
                            //     MaterialPageRoute(builder: (context) => Noti());
                            // Navigator.push(context, route);
                          },
                          icon: Icon(Icons.notifications_outlined),
                          color: Colors.white,
                          iconSize: 25,
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 125),
                    child: _currentIndex.toString().contains('0')
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Dropdown(),
                              SizedBox(
                                width: 10,
                              ),
                              Dropdown2()
                            ],
                          )
                        : Text(''),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 125),
                    child: _currentIndex.toString().contains('1')
                        ? BoxSearch()
                        : Text(''),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 125),
                    child: _currentIndex.toString().contains('2')
                        ? SearchMyCourse()
                        : Text(''),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 125),
                    child: _currentIndex.toString().contains('3')
                        ? SearchMyListinTech()
                        : Text(''),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 125),
                    child: _currentIndex.toString().contains('4')
                        ? SearchMyListinTech()
                        : Text(''),
                  ),
                ],
              ),
            ),
            key: scaffoldKey,
            drawer: Drawer(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 130, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/profile.png',
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('มัลธนา พจนวราภรณ์',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromRGBO(111, 116, 183, 1),
                                    fontWeight: FontWeight.bold)),
                            Text(
                              'วิทยากร',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 90),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/home.png'),
                                  TextButton(
                                    child: Text('หน้าหลัก',
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                111, 116, 183, 1),
                                            fontSize: 15)),
                                    onPressed: () {
                                      Route route = MaterialPageRoute(
                                          builder: (context) => Home());
                                      Navigator.pushReplacement(context, route);

                                      scaffoldKey.currentState!.openEndDrawer();
                                    },
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset('assets/person.png'),
                                  TextButton(
                                    child: Text('บัญชีของฉัน',
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                111, 116, 183, 1),
                                            fontSize: 15)),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => MyProfile()),
                                      );
                                    },
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset('assets/overall.png'),
                                  TextButton(
                                    child: Text('ภาพรวม',
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                111, 116, 183, 1),
                                            fontSize: 15)),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => OverAll()),
                                      );
                                    },
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset('assets/layers.png'),
                                  TextButton(
                                    child: Text('คอร์สเรียนจากฉัน',
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                111, 116, 183, 1),
                                            fontSize: 15)),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                CourseFrowmMe()),
                                      );
                                    },
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset('assets/clock.png'),
                                  TextButton(
                                    child: Text('ติดตามผล',
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                111, 116, 183, 1),
                                            fontSize: 15)),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                CheckResult()),
                                      );
                                    },
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset('assets/question-circle.png'),
                                  TextButton(
                                    child: Text('คำถามที่พบบ่อย',
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                111, 116, 183, 1),
                                            fontSize: 15)),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Faq()),
                                      );
                                    },
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                      'assets/Icon material-translate.png'),
                                  TextButton(
                                    child: Text('ภาษา',
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                111, 116, 183, 1),
                                            fontSize: 15)),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset('assets/sign_out.png'),
                                  TextButton(
                                    child: Text('ออกจากระบบ',
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                111, 116, 183, 1),
                                            fontSize: 15)),
                                    onPressed: () {
                                      Route route = MaterialPageRoute(
                                          builder: (context) => SignIn());
                                      Navigator.pushReplacement(context, route);

                                      scaffoldKey.currentState!.openEndDrawer();
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            body: _pageWidget.elementAt(_currentIndex)),
      ),
    );
  }
}
