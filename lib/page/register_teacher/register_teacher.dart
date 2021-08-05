import 'package:flutter/material.dart';
import 'package:we_learn/launcher.dart';
import 'package:we_learn/page/my_profile/component/textbox.dart';

class RegisTeacher extends StatefulWidget {
  const RegisTeacher({Key? key}) : super(key: key);

  @override
  _RegisTeacherState createState() => _RegisTeacherState();
}

class _RegisTeacherState extends State<RegisTeacher> {
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
          padding: const EdgeInsets.all(28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'ลงทะเบียนวิทยากร',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TxtBox(
                    315, Colors.grey, 'ชื่อของคุณ/ชื่อองค์กร/ชื่อสถาบัน'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TxtBox(315, Colors.grey, 'อีเมล'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TxtBox(315, Colors.grey, 'หมายเลขโทรศัพท์'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TxtBox(315, Colors.grey, 'ลิงก์ resume'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  'WE Learn Pro จะรักษาความเป็นส่วนตัวและไม่เผยแพร่\nข้อมูลของคุณ ทั้งนี้คุณยืนยันอนุญาตให้เราตรวจสอบข้อมูล\nเพิ่มเติมและติดต่อคุณกลับผ่านช่องทางที่คุณให้ไว้ได้',
                  style: TextStyle(color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
               padding: const EdgeInsets.symmetric(vertical: 25),
                child: SizedBox(
                  width: 154,
                  height: 41,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                    child: Center(
                      child: Text(
                        'ลงทะเบียน',
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
                ),
              ),
              Image.asset('assets/teach1.png')
            ],
          ),
        ),
      ),
    );
  }
}
