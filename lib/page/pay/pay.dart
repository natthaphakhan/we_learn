import 'package:flutter/material.dart';
import 'package:we_learn/page/pay/componenet/exptile.dart';
import 'package:we_learn/page/pay/pay2.dart';

class Pay extends StatefulWidget {
  const Pay({Key? key}) : super(key: key);

  @override
  _PayState createState() => _PayState();
}

class _PayState extends State<Pay> {
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
                      'เลือกวิธีการชำระเงิน',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: ExpTileinPay('โมบายแบงก์กิ้ง'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: ExpTileinPay('บัตรเครดิต / บัตรเดบิต'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: ExpTileinPay(
                        'ชำระผ่านเคาน์เตอร์เซอร์วิส\nหรือชำระด้วยระบบ QR CODE'),
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
                                MaterialPageRoute(builder: (context) => Pay2()),
                              );
                            },
                            child: Center(
                              child: Text(
                                'ถัดไป',
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
