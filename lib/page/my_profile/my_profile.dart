import 'package:flutter/material.dart';
import 'package:we_learn/page/my_profile/component/dropbox.dart';
import 'package:we_learn/page/my_profile/component/textbox.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
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
                  padding: const EdgeInsets.only(left: 90),
                  child: Text(
                    'ข้อมูลส่วนตัว',
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
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 28),
              child: Column(
                children: [
                  Text(
                    'วิทยากร',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Image.asset('assets/profile.png'),
                  Text(
                    'รูปภาพประจำตัว',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.upload,
                          color: Color.fromRGBO(111, 116, 183, 1),
                        ),
                        Text(
                          'เลือกรูปภาพ',
                          style: TextStyle(
                              color: Color.fromRGBO(111, 116, 183, 1)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: TxtBox(320, Colors.black, 'มัลธนา พจนวราภรณ์'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: TxtBox(320, Colors.black, 'malthnapj@gmail.com'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: DpBox(Colors.black, 'รหัสผ่าน', 320),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: DpBox(Colors.black, 'รหัส PIN', 320),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: TxtBox(320, Colors.grey, 'เบอร์โทรศัพท์'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      children: [
                        DpBox(Colors.black, 'หญิง', 150),
                        Expanded(
                          child: SizedBox(),
                        ),
                        DateBox(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Divider(
                      thickness: .5,
                      color: Colors.grey[400],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Text(
                          'ข้อมูลเพิ่มเติม',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Expanded(
                          child: SizedBox(),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: DpBox(Colors.grey, 'ระดับการศึกษา', 320),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: DpBox(Colors.grey, 'คณะ/วิทยาลัย', 320),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: DpBox(Colors.grey, 'มหาวิทยาลัย/สถาบัน', 320),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 50),
                    child: Image.asset('assets/cloud-upload.png'),
                  ),
                  Text(
                    'อัปโหลดสำเนาบัตรประชาชน',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.upload,
                          color: Color.fromRGBO(111, 116, 183, 1),
                        ),
                        Text(
                          'เลือกรูปภาพ',
                          style: TextStyle(
                              color: Color.fromRGBO(111, 116, 183, 1)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: TxtBox(320, Colors.grey, 'เลขประจำตัวประชาชน'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: TxtBox(320, Colors.grey, 'ที่อยู่ปัจจุบัน'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      children: [
                        TxtBox(150, Colors.grey, 'แขวง/ตำบล'),
                        Expanded(
                          child: SizedBox(),
                        ),
                        TxtBox(150, Colors.grey, 'เขต/อำเภอ'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      children: [
                        TxtBox(150, Colors.grey, 'จังหวัด'),
                        Expanded(
                          child: SizedBox(),
                        ),
                        TxtBox(150, Colors.grey, 'รหัสไปรษณีย์'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Divider(
                      thickness: .5,
                      color: Colors.grey[400],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Text(
                          'รายละเอียดบัญชีรับเงิน',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Expanded(
                          child: SizedBox(),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: DpBox(Colors.grey, 'ธนาคาร', 320),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: TxtBox(320, Colors.grey, 'ชื่อบัญชี'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: TxtBox(320, Colors.grey, 'เลขที่บัญชี'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: SizedBox(
                      width: 154,
                      height: 31,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Center(
                          child: Text(
                            'บันทึก',
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
