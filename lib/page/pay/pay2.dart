import 'package:flutter/material.dart';
// import 'package:we_learn/page/in_course/in_course.dart';
import 'package:we_learn/page/in_course/in_course2.dart';
import 'package:we_learn/page/pay/componenet/exptile.dart';

class Pay2 extends StatefulWidget {
  const Pay2({Key? key}) : super(key: key);

  @override
  _Pay2State createState() => _Pay2State();
}

class _Pay2State extends State<Pay2> {
  bool upl = false;
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
                  padding: const EdgeInsets.only(left: 120),
                  child: Text(
                    'ชำระเงิน',
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
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'คอร์สเรียน: การบริหารเวลา (TIME MANAGEMENT)',
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    'ประเภท: คอร์สเรียนออนไลน์',
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    'ราคา: 2,700 บาท',
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    'วันที่: 20 กรกฎาคม 2564',
                    style: TextStyle(color: Colors.black),
                  ),
                  Divider(
                    thickness: .5,
                    color: Colors.grey[400],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      'อัพโหลดหลักฐานการชำระเงิน:',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                if (upl == true) {
                                  upl = false;
                                } else {
                                  upl = true;
                                }
                              });
                            },
                            child: upl == false
                                ? Image.asset('assets/cloud-upload.png')
                                : Image.asset('assets/bill.png')),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/xamplepay.png'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: ExpTileinPay2('โอนจากธนาคาร'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: ExpTileinPay2('โอนไปยัง'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 100,
                          height: 30,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Center(
                              child: Text(
                                'ยกเลิก',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromRGBO(111, 116, 183, 1),
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(33.0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        SizedBox(
                          width: 100,
                          height: 30,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => InCourse2()),
                              );
                            },
                            child: Center(
                              child: Text(
                                'ชำระเงิน',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromRGBO(111, 116, 183, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(33.0),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/pay.png'),
                      ],
                    ),
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
