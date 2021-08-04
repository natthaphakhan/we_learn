import 'package:flutter/material.dart';
import 'package:we_learn/page/check_result/check_result.dart';
import 'package:we_learn/page/course_from_me/course_from_me.dart';
import 'package:we_learn/page/faq/faq.dart';
import 'package:we_learn/page/my_profile/my_profile.dart';
import 'package:we_learn/page/overall/overall.dart';
import 'package:we_learn/page/sign_in/sign_in.dart';
import '../../launcher.dart';

class InNews extends StatefulWidget {
  const InNews({Key? key}) : super(key: key);

  @override
  _InNewsState createState() => _InNewsState();
}

class _InNewsState extends State<InNews> {
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
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(28, 20, 28, 20),
                    child: ListView(
                      children: [
                        Text(
                          'หลุดข้อมูลสเปค Google Pixel 5 ชุดใหญ่แทบทุกซอกทุกมุม',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          '   มือถือรุ่นท็อปประจำปี 2020 ของ Google อย่าง Pixel 5 นั้น มีทั้งข้อมูลอย่างเป็นทางการ ผสมปนเปกับข่าวลือต่างๆ หลุดออกมาอย่างต่อเนื่อง เมื่อไม่กี่วันนี้ก็พึ่งจะมีราคาหลุดออกมาจากเว็บไซต์ของร้านค้าฝั่งยุโรปไปอยู่หมาด ๆ แต่ล่าสุดวันนี้มีข้อชุดใหญ่มาเพิ่มแบบจัดเต็ม ทำให้เราได้ทราบถึงสเปคของมือถือรุ่นนี้แบบแทบจะทุกซอกทุกมุม โดยจะมีอะไรน่าสนใจบ้างสามารถเข้ามาดูกันได้เลย',
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          '\n   ข้อมูลที่หลุดออกมาคราวนี้มีต้นทางมาจากประเทศเยอรมนี โดยระบุว่า Pixel 5 จะขับเคลื่อนด้วย Snapdragon 765G ไม่ใช่ชิปเซ็ตไฮเอนด์ Snapdragon 865 หรือ 865+ อย่างที่หลายคนคาดหวัง ซึ่งนั่นหมายความว่า Pixel 5 จะไม่รองรับ 5G mmWave แต่จะรองรับเพียงแค่ Sub-6 เท่านั้น',
                          style: TextStyle(fontSize: 14),
                        ),
                        Image.asset('assets/img_in_news_1.png'),
                        Text(
                            '   หน้าจอแสดงผลของ Pixel 5 จะมีขนาดอยู่ที่ 6 นิ้ว ความละเอียด Full HD+ พาแนลชนิด OLED รีเฟรชเรทสูง 90Hz รองรับการแสดงผล HDR และครอบทับด้วยกระจก Gorilla Glass 6 และเจาะรูที่บริเวณมุมขวาบนเป็นที่สำหรับวางกล้องเซลฟี่ 8 MP ส่วนเซ็นเซอร์ลายนิ้วมือนั้นไม่ได้อยู่ใต้หน้าจอ แต่จะอยู่ที่บริเวณด้านหลังตัวเครื่อง ดังที่เห็นได้จากหลาย ๆ ภาพที่หลุดออกมาก่อนหน้านี้'),
                        Image.asset('assets/img_in_news_2.png')
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
