import 'package:flutter/material.dart';
import 'package:we_learn/launcher.dart';
import 'package:we_learn/page/sign_up/sign_up.dart';
import 'component/sign_in_button.dart';
import 'component/text_box.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // แตะที่ว่างเพื่อออกจากคีย์บอร์ด
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: SafeArea(
        child: Scaffold(
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
              // รูปคนนอน
              Padding(
                padding: const EdgeInsets.fromLTRB(121.8, 78.3, 0, 0),
                child: Image.asset(
                  'assets/sign_in_img.png',
                  width: 224.19,
                  height: 165.18,
                ),
              ),
              // ยินดีต้อนรับ
              Container(
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top: 277.9),
                child: Text(
                  'ยินดีต้อนรับ',
                  style: TextStyle(
                    color: Color.fromRGBO(111, 116, 183, 1),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              // กรุณาเข้าสู่ระบบ
              Container(
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top: 305.9),
                child: Text(
                  'กรุณาเข้าสู่ระบบ',
                  style: TextStyle(
                    color: Color.fromRGBO(111, 116, 183, 1),
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              // ช่องใส่ อีเมล
              Padding(
                padding: const EdgeInsets.fromLTRB(28.5, 353.9, 28.5, 0),
                child: TextBox('อีเมล'),
              ),
              // ช่องใส่ password
              Padding(
                  padding: const EdgeInsets.fromLTRB(28.5, 409.9, 28.5, 0),
                  child: PasswordBox()),
              // ลืมใส่รหัสผ่าน
              Padding(
                padding: const EdgeInsets.fromLTRB(274.5, 465.9, 0, 0),
                child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    'ลืมรหัสผ่าน?',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
              ),
              // ปุ่มเข้าสู่ระบบ
              Container(
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top: 503.9),
                child: ButtonSignin(),
              ),
              // สมัครสมาชิกใหม่ ลงทะเบียน ที่นี่
              Container(
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top: 563.9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'สมัครสมาชิกใหม่ ',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.white.withOpacity(0.7)),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUp()),
                        );
                      },
                      child: Text(
                        'ลงทะเบียน ',
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
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
                child: Container(
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(top: 657.1),
                  child: Image.asset(
                    'assets/facebook_button.png',
                    width: 318,
                    height: 41,
                  ),
                ),
              ),
              // ปุ่มเข้าระบบด้วย google
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
                child: Container(
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(top: 714.9),
                  child: Image.asset(
                    'assets/google_button.png',
                    width: 318,
                    height: 41,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// สีม่วง we learn 111, 116, 183, 1
