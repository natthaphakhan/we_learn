import 'package:flutter/material.dart';
import 'package:we_learn/page/all_news/component/all_news_card.dart';
import 'package:we_learn/page/all_news/component/drop_down_news_filter.dart';
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
                    onTap: () {},
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
                                            28,30, 0, 7),
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
                  child: BoxSearchNews(),
                ),
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
