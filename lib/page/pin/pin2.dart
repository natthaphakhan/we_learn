import 'package:flutter/material.dart';
import 'package:we_learn/launcher.dart';
import 'package:we_learn/page/pin/component/pin_box.dart';

class Pin2 extends StatelessWidget {
  const Pin2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: SafeArea(
          child: Scaffold(
        resizeToAvoidBottomInset: false, // ไม่แจ้งคีย์บอร์ดเกิน
        body: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(150, 40, 0, 0),
                    child: Text(
                      'ขั้นตอนที่ 2/2',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color.fromRGBO(111, 116, 183, 1)),
                    ),
                  ),
                  // ปุ่มข้าม
                  Padding(
                    padding: const EdgeInsets.fromLTRB(325, 41, 29, 0),
                    child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        'ข้าม',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: Color.fromRGBO(155, 155, 155, 1)),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28),
                child: Text(
                  'สร้างรหัส PIN',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                      color: Color.fromRGBO(111, 116, 183, 1)),
                ),
              ),
              // รูปหน้าสร้าง pin
              Padding(
                padding: const EdgeInsets.only(top: 17.9),
                child: Image.asset(
                  'assets/pin.png',
                  width: 208.16,
                  height: 169.28,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 23.7),
                child: Text(
                  'ยืนยันรหัส PIN อีกครั้ง',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                ),
              ),
              // ช่องใส่ pin
              Padding(
                padding: const EdgeInsets.fromLTRB(29, 19.1, 28, 0),
                child: PinBox(),
              ),
              // ปุ่มยืนยัน
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: SizedBox(
                  width: 154,
                  height: 38,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                    child: Center(
                      child: Text(
                        'ยืนยัน',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(111, 116, 183, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(19.0),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
