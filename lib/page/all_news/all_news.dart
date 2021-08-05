import 'package:flutter/material.dart';
import 'package:we_learn/page/all_news/component/all_news_card.dart';
import 'package:we_learn/page/all_news/component/drop_down_news_filter.dart';
import 'package:we_learn/page/check_result/check_result.dart';
import 'package:we_learn/page/contact/contact.dart';
import 'package:we_learn/page/course_from_me/course_from_me.dart';
import 'package:we_learn/page/faq/faq.dart';
import 'package:we_learn/page/my_profile/my_profile.dart';
import 'package:we_learn/page/noti/noti.dart';
import 'package:we_learn/page/overall/overall.dart';
import 'package:we_learn/page/sign_in/sign_in.dart';

import '../../launcher.dart';
import 'component/search_box.dart';

class AllNews extends StatefulWidget {
  const AllNews({Key? key}) : super(key: key);

  @override
  _AllNewsState createState() => _AllNewsState();
}

class _AllNewsState extends State<AllNews> {
  bool valueBox1 = false;
  bool tapsearch = false;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            appBar: AppBar(
              titleSpacing: 0,
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
              title: Padding(
                padding: const EdgeInsets.only(left: 28),
                child: GestureDetector(
                    onTap: () => scaffoldKey.currentState!.openDrawer(),
                    child: Image.asset('assets/menu_line_purple.png')),
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
                                  Image.asset('assets/telephone.png'),
                                  TextButton(
                                    child: Text('ติดต่อเรา',
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                111, 116, 183, 1),
                                            fontSize: 15)),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Contact()),
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
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(28, 27.5, 28, 0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios_rounded,
                          size: 16,
                        ),
                      ),
                      Text(
                        ' ข่าวสารและบทความ',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 16),
                      ),
                      Expanded(child: SizedBox()),
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15)),
                              ),
                              context: context,
                              builder: (context) {
                                return StatefulBuilder(
                                    builder: (context, StateSetter mystate) {
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Material(
                                        elevation: 1,
                                        shadowColor:
                                            Colors.grey.withOpacity(0.3),
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(15),
                                            topLeft: Radius.circular(15)),
                                        child: Container(
                                          height: 52,
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 20),
                                                child: Row(
                                                  children: [
                                                    GestureDetector(
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child: Image.asset(
                                                            'assets/x.png')),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 120),
                                                      child: Text(
                                                        'ตัวกรอง',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            fontSize: 20),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 100),
                                                      child: Text(
                                                        'รีเซ็ต',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color:
                                                                Color.fromRGBO(
                                                                    111,
                                                                    116,
                                                                    183,
                                                                    1),
                                                            fontSize: 12),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            28, 30, 0, 7),
                                        child: Text(
                                          'เรียงลำดับตาม',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Container(
                                          alignment: Alignment.topCenter,
                                          child: DropdownNewsFilter1()),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            28, 10, 28, 0),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 7),
                                                  child: Text(
                                                    'หมวดหมู่',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ),
                                                DropdownNewsFilter2()
                                              ],
                                            ),
                                            Expanded(child: SizedBox()),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            28, 40, 28, 15),
                                        child: Container(
                                          width: 334,
                                          height: 36,
                                          alignment: Alignment.topCenter,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Center(
                                              child: Text(
                                                'นำไปใช้',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              primary: Color.fromRGBO(
                                                  111, 116, 183, 1),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                });
                              });
                        },
                        child: Image.asset('assets/filter.png'),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 15.5, 0, 0),
                  child: GestureDetector(
                      onDoubleTap: () {
                        setState(() {
                          if (tapsearch == true) {
                            tapsearch = false;
                          } else {
                            tapsearch = true;
                          }
                        });
                      },
                      child: BoxSearchNews()),
                ),
                tapsearch == true
                    ? Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 15),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(28, 5, 5, 0),
                              child: Icon(
                                Icons.article_outlined,
                                size: 20,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'ผลการค้นหา ‘ถ่ายภาพ’',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  'ค้นพบ 8 รายการ',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    : Text(''),
                Expanded(
                  child: Container(
                    child: ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(28, 28, 28, 0),
                          child: AllNewsCard(
                            img: 'assets/news_1.png',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(28, 28, 28, 0),
                          child: AllNewsCard(
                            img: 'assets/news_2.png',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(28, 28, 28, 0),
                          child: AllNewsCard(
                            img: 'assets/news_3.png',
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
