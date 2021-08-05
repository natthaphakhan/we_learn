import 'package:flutter/material.dart';
import 'package:we_learn/page/my_profile/component/dropbox.dart';

class Faq extends StatefulWidget {
  const Faq({Key? key}) : super(key: key);

  @override
  _FaqState createState() => _FaqState();
}

class _FaqState extends State<Faq> {
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
                    padding: const EdgeInsets.only(left: 80),
                    child: Text(
                      'คำถามที่พบบ่อย',
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
                  onTap: () {},
                  child: Icon(
                    Icons.notifications_outlined,
                    color: Color.fromRGBO(111, 116, 183, 1),
                  ),
                ),
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(28),
            child: Column(
              children: [
                DpBox(Colors.black, 'กดดาวน์โหลดไฟล์เอกสารตรงไหนเหรอคะ', 320),
                SizedBox(height: 10,),
                Material(
                  elevation: 1,
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                    child: ExpansionTile(
                      textColor: Color.fromRGBO(111, 116, 183, 1),
                      iconColor: Color.fromRGBO(111, 116, 183, 1),
                      title: Text(
                        'หากต้องการสมัครสมาชิก ต้องทำอย่างไรบ้าง',
                        style: TextStyle(fontSize: 14),
                      ),
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Text(
                            'คลิกไปที่ปุ่มลงทะเบียนด้านบนขวาแล้วกรอกข้อมูลเพื่อสมัครสมาชิก เพื่อใช้อีเมล/ชื่อผู้ใช้งาน และรหัสผ่านในการเข้าสู่ระบบ',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(child: SizedBox()),
                Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: Image.asset('assets/faq.png'),
                )
              ],
            ),
          )),
    );
  }
}
