import 'package:flutter/material.dart';
import 'package:we_learn/page/my_course/my_course.dart';
import 'package:we_learn/page/recommend/recommend.dart';
import 'package:we_learn/page/search/search.dart';

import 'package:we_learn/page/sign_in/sign_in.dart';

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
    // MyFavorite(),
    // OnSearch()
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
                            _onItemTapped(3);
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
                  // Container(
                  //   margin: EdgeInsets.only(top: 125),
                  //   child: _currentIndex.toString().contains('3')
                  //       ? SearchMyFav()
                  //       : Text(''),
                  // )
                ],
              ),
            ),
            key: scaffoldKey,
            drawer: Drawer(
              child: ListView(
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipOval(
                        child: Image.network(
                          'https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Y2F0fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('ณัฐปคัลภ์ ขุนจันทร์',
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromRGBO(111, 116, 183, 1),
                              fontWeight: FontWeight.bold)),
                      Text(
                        'สมาชิก',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.home_outlined,
                            color: Color.fromRGBO(111, 116, 183, 1),
                          )),
                      TextButton(
                        child: Text('หน้าแรก',
                            style: TextStyle(
                                color: Color.fromRGBO(111, 116, 183, 1),
                                fontSize: 15)),
                        onPressed: () {
                          Route route =
                              MaterialPageRoute(builder: (context) => Home());
                          Navigator.pushReplacement(context, route);

                          scaffoldKey.currentState!.openEndDrawer();
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.settings_outlined,
                            color: Color.fromRGBO(111, 116, 183, 1),
                          )),
                      TextButton(
                        child: Text('แก้ไขโปรไฟล์',
                            style: TextStyle(
                                color: Color.fromRGBO(111, 116, 183, 1),
                                fontSize: 15)),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.question_answer_outlined,
                            color: Color.fromRGBO(111, 116, 183, 1),
                          )),
                      TextButton(
                        child: Text('คำถามที่พบบ่อย',
                            style: TextStyle(
                                color: Color.fromRGBO(111, 116, 183, 1),
                                fontSize: 15)),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.translate_outlined,
                            color: Color.fromRGBO(111, 116, 183, 1),
                          )),
                      TextButton(
                        child: Text('ภาษา',
                            style: TextStyle(
                                color: Color.fromRGBO(111, 116, 183, 1),
                                fontSize: 15)),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.exit_to_app_outlined,
                            color: Colors.red,
                          )),
                      TextButton(
                        child: Text('ออกจากระบบ',
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 15)),
                        onPressed: () {
                          Route route =
                              MaterialPageRoute(builder: (context) => SignIn());
                          Navigator.pushReplacement(context, route);

                          scaffoldKey.currentState!.openEndDrawer();
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            body: _pageWidget.elementAt(_currentIndex)),
      ),
    );
  }
}
