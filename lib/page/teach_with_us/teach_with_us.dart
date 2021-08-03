import 'package:flutter/material.dart';

class TechWithUs extends StatefulWidget {
  const TechWithUs({Key? key}) : super(key: key);

  @override
  _TechWithUsState createState() => _TechWithUsState();
}

class _TechWithUsState extends State<TechWithUs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'ร่วมสอนกับเรา  ',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Image.asset('assets/teach2.png', scale: 1.3),
                  )
                ],
              ),
              Text(
                'แบ่งปันความรู้และจุดประกายผู้เรียนกับเรา\nด้วยคอร์สเรียนที่คุณสร้างสรรค์ได้เอง',
                style: TextStyle(color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: SizedBox(
                  width: 154,
                  height: 41,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => Home()),
                      // );
                    },
                    child: Center(
                      child: Text(
                        'ลงทะเบียนเลย',
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
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 25),
                child: Text(
                  'ทำไมต้องร่วมสอนกับเรา?',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Image.asset('assets/teach4.png'),
              ),
              Text(
                'สร้างรายได้ไม่จำกัด',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              Text(
                'ลงคอร์สเพียงครั้งแรกก็สามารถ\nสร้างรายได้ได้ตลอด ไม่ต้องลงคอร์สซ้ำ',
                style: TextStyle(color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Image.asset('assets/teach5.png'),
              ),
              Text(
                'ระบบจัดการคอร์สเรียน',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              Text(
                'สามารถลงคอร์สเรียนได้ง่าย ๆ เพราะเรามี\nระบบจัดการให้ตั้งแต่เริ่มลงคอร์ฒจนลงขาย',
                style: TextStyle(color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Image.asset('assets/teach3.png'),
              ),
              Text(
                'ประสบการณ์ที่ดีที่สุด',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              Text(
                'เพิ่มประสบการณ์การสอนออนไลน์\nและสร้างคอนเน็คชั่นมากมายกับคุณ',
                style: TextStyle(color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 25, 0, 15),
                child: Text(
                  'คุณสมบัติวิทยากร',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/teach6.png'),
                        Text('  ไม่จำเป็นต้องมีประสบการณ์การสอน')
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/teach6.png'),
                        Text('  สมัครในนามบุคคล องค์กร หรือสถาบันก็ได้')
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/teach6.png'),
                        Text('  อายุ 20 ปีขึ้นไป (บุคคล)')
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/teach6.png'),
                        Text(
                            '  มีความรู้ ชำนาญและเชี่ยวชาญด้านนั้น ๆ \n เป็นอย่างดี (มีประสบการณ์อย่างน้อย 3 ปี)')
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/teach6.png'),
                        Text(
                            '  มีทักษะการสื่อสารที่ดี ทั้งฟัง พูด อ่าน และเขียน')
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Image.asset('assets/teach1.png'),
              )
            ],
          )
        ],
      ),
    );
  }
}

class SearchMyListinTech extends StatefulWidget {
  @override
  _SearchMyListinTechState createState() => _SearchMyListinTechState();
}

class _SearchMyListinTechState extends State<SearchMyListinTech> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 36,
      margin: EdgeInsets.symmetric(horizontal: 28),
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        elevation: 1,
        child: TextField(
          decoration: InputDecoration(
            hintText: "ค้นหารายการของฉัน",
            prefixIcon: Icon(Icons.search),
            hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
            contentPadding: EdgeInsets.zero,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              borderSide:
                  BorderSide(color: Color.fromRGBO(111, 116, 183, 1), width: 1),
            ),
          ),
        ),
      ),
    );
  }
}
