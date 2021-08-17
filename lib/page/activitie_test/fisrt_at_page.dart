import 'package:flutter/material.dart';
import 'package:we_learn/page/activitie_test/in_at.dart';
// import 'package:we_learn/page/learn/learn.dart';

class FirstST extends StatefulWidget {
  const FirstST({Key? key}) : super(key: key);

  @override
  _FirstSTState createState() => _FirstSTState();
}

class _FirstSTState extends State<FirstST> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 0,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Padding(
            padding: const EdgeInsets.only(left: 20),
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
                  padding: const EdgeInsets.only(left: 50),
                  child: Text(
                    'Photography Masterclass',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                )
              ],
            ),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Image.asset('assets/test.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Text(
                  'กิจกรรมข้อสอบ',
                  style: TextStyle(
                      color: Color.fromRGBO(111, 116, 183, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  'ตอนที่ 1.3 กิจกรรมข้อสอบ \nActivity: Rules and Procedures',
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(111, 116, 183, 1),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: 60),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(111, 116, 183, 1),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: Divider(
                  thickness: 0.5,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  'จำนวนข้อ: 10 ข้อ \nคะแนนเต็ม: 20 คะแนน \nระยะเวลาในการทำข้อสอบ: ไม่จำกัดเวลา \nจำนวนครั้งที่ให้ทำ: ไม่จำกัด \nวิธีการคิดคะแนน: สูงสุด',
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 100,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Center(
                          child: Text('ข้ามก่อน'),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => InActivitie()),
                        );
                      },
                      child: Container(
                        width: 100,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(227, 127, 163, 1),
                          // border: Border.all(color: Colors.grey),
                        ),
                        child: Center(
                          child: Text(
                            'ทำข้อสอบ',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
