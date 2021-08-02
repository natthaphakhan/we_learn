import 'package:flutter/material.dart';
import 'package:we_learn/page/sign_in/sign_in.dart';
import 'package:we_learn/page/sign_up/component/sign_up_button.dart';
import 'package:we_learn/page/sign_up/component/text_box.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // แตะที่ว่างเพื่อออกจากคีย์บอร์ด
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: SafeArea(
          child: Scaffold(
        resizeToAvoidBottomInset: false, // ไม่แจ้งคีย์บอร์ดเกิน
        body: Stack(
          children: [
            // พื้นหลัง
            Image.asset(
              'assets/bg.png',
              fit: BoxFit.fill,
              width: double.infinity,
              height: double.maxFinite,
            ),
            // โลโก้
            Padding(
              padding: const EdgeInsets.fromLTRB(28, 51.1, 0, 0),
              child: Image.asset(
                'assets/logo.png',
                width: 174,
                height: 35.35,
              ),
            ),
            // รูปหน้า ลงทะเบียน
            Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 106),
              child: Image.asset(
                'assets/sign_up_img.png',
                width: 219.17,
                height: 104.81,
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 235),
              child: Text(
                'ลงทะเบียนเพื่อสมัครสมาชิก',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Color.fromRGBO(111, 116, 183, 1)),
              ),
            ),
            // ช่องกรอกข้อมูลเพื่อสมัครสมาชิก
            Container(
              margin: EdgeInsets.only(top: 282),
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  TextBox('ชื่อ-นามสกุล'),
                  SizedBox(
                    height: 10,
                  ),
                  TextBox('อีเมล'),
                  SizedBox(
                    height: 10,
                  ),
                  PasswordBox(text: 'รหัสผ่าน (8 อักขระขึ้นไป)'),
                  SizedBox(
                    height: 10,
                  ),
                  PasswordBox(text: 'ยืนยันรหัสผ่าน'),
                  SizedBox(
                    height: 27.9,
                  ),

                  ButtonSignUp(), // ปุ่มสมัคร
                  SizedBox(
                    height: 19,
                  ),
                  // กลับไปหน้าเข้าสู่ระบบ
                  Container(
                    alignment: Alignment.topCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'เป็นสมาชิกอยู่แล้ว ',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white.withOpacity(0.7)),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignIn()),
                            );
                          },
                          child: Text(
                            'เข้าสู่ระบบ',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Colors.white),
                          ),
                        ),
                        Text(
                          ' ที่นี่',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white.withOpacity(0.7)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // เส้น -หรือ-
            Container(
              margin: EdgeInsets.fromLTRB(28.5, 606.9, 28.5, 0),
              child: Row(children: <Widget>[
                Expanded(
                    child: Divider(
                  thickness: 0.5,
                  color: Colors.white,
                )),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 11),
                  child: Text("หรือ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                ),
                Expanded(
                    child: Divider(
                  thickness: 0.5,
                  color: Colors.white,
                )),
              ]),
            ),
            // ปุ่มเข้าระบบด้วย facebook
            Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 657.1),
              child: Image.asset(
                'assets/facebook_button.png',
                width: 318,
                height: 41,
              ),
            ),
            // ปุ่มเข้าระบบด้วย google
            Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 714.9),
              child: Image.asset(
                'assets/google_button.png',
                width: 318,
                height: 41,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
