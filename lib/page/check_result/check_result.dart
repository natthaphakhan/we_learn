import 'package:flutter/material.dart';
import 'package:we_learn/page/check_result/result1.dart';
import 'package:we_learn/page/check_result/result2.dart';
import 'package:we_learn/page/noti/noti.dart';

class CheckResult extends StatefulWidget {
  const CheckResult({Key? key}) : super(key: key);

  @override
  _CheckResultState createState() => _CheckResultState();
}

class _CheckResultState extends State<CheckResult> {
  bool onRe2 = false;
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
                  padding: const EdgeInsets.only(left: 100),
                  child: Text(
                    'ติดตามผล',
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
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        onRe2 = false;
                      });
                    },
                    child: Row(
                      children: [
                        Image.asset('assets/bag_money.png'),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '฿956,000',
                              style: TextStyle(
                                  color: onRe2 == false
                                      ? Color.fromRGBO(111, 116, 183, 1)
                                      : Colors.grey,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'ยอดขายรวมเดือนนี้ (บาท)',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        onRe2 = true;
                      });
                    },
                    child: Row(
                      children: [
                        Image.asset('assets/half.png'),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '฿573,600',
                              style: TextStyle(
                                  color: onRe2 == true
                                      ? Color.fromRGBO(111, 116, 183, 1)
                                      : Colors.grey,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'ส่วนแบ่งรวมเดือนนี้ (บาท)',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [Icon(Icons.article_outlined), Text('รายการ')],
                ),
              ),
              Container(
                child: onRe2 == false ? Result1() : Result2(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
