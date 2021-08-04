import 'package:flutter/material.dart';
import 'package:we_learn/page/learn/learn.dart';

class InTest extends StatefulWidget {
  const InTest({Key? key}) : super(key: key);

  @override
  _InTestState createState() => _InTestState();
}

class _InTestState extends State<InTest> {
  bool vl = false;

  Widget popUpFinish(BuildContext context) {
    return new AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      content: new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "ยืนยันการส่งคำตอบ",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child:
                Text('คุณทบทวนข้อสอบเรียบร้อย\nและยืนยันการส่งคำตอบหรือไม่ ?'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(
                      context,
                    );
                  },
                  child: Center(
                    child: Text(
                      'ยังก่อน',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey[200],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(33.0),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Learn()),
                    );
                  },
                  child: Center(
                    child: Text(
                      'ส่งเลย',
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
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget popUpExit(BuildContext context) {
    return new AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      content: new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "คุณต้องการออกจากข้อสอบและกลับไปหน้าบทเรียนหรือไม่?",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
                'หากคุณยังทำข้อสอบไม่สำเร็จ คุณจะไม่สามารถเล่นวีดีโอต่อได้:'),
          ),
          Row(
            children: [
              Container(
                height: 10.0,
                width: 20.0,
                decoration: new BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
              ),
              Text('จำนวนข้อสอบ: 10 ข้อ')
            ],
          ),
          Row(
            children: [
              Container(
                height: 10.0,
                width: 20.0,
                decoration: new BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
              ),
              Text('ระยะเวลา: ไม่จำกัดเวลา')
            ],
          ),
          Row(
            children: [
              Container(
                height: 10.0,
                width: 20.0,
                decoration: new BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
              ),
              Text('จำนวนครั้งที่ให้ทำ: ไม่จำกัด')
            ],
          ),
          Row(
            children: [
              Container(
                height: 10.0,
                width: 20.0,
                decoration: new BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
              ),
              Text('วิธีการคิดคะแนน: สูงสุด')
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Learn()),
                    );
                  },
                  child: Center(
                    child: Text(
                      'ออก',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey[200],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(33.0),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(
                      context,
                    );
                  },
                  child: Center(
                    child: Text(
                      'ทำข้อสอบต่อ',
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
              ],
            ),
          )
        ],
      ),
    );
  }

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
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => popUpExit(context),
                    );
                  },
                  child: Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Color.fromRGBO(111, 116, 183, 1),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Text(
                    'Photography Masterclass',
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
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  'กิจกรรมข้อสอบ: Activity: Rules and Procedures',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Divider(
                  thickness: .5,
                  color: Colors.grey[400],
                ),
              ),
              Row(
                children: [
                  Text(
                    'จำนวนข้อสอบ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: SizedBox(),
                  ),
                  Text(
                    'เวลา 00:08:22 นาที',
                    style: TextStyle(color: Color.fromRGBO(227, 127, 163, 1)),
                  )
                ],
              ),
              Container(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (contex, i) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: i == 0
                                ? Color.fromRGBO(227, 127, 163, 1)
                                : Colors.grey[100],
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.grey)),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                          child: Text(
                            '${(i + 1)}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: i == 0 ? Colors.white : Colors.black),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.contact_support,
                    color: Colors.grey,
                  ),
                  Text(
                    'ข้อสอบ: ข้อที่ 1',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: SizedBox(),
                  ),
                  Checkbox(
                      checkColor: Colors.white,
                      activeColor: Colors.green,
                      value: vl,
                      onChanged: (value) {
                        setState(() {
                          vl = value!;
                        });
                      }),
                  Text(
                    'ทบทวน',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(children: [
                  Text(
                    'คำชี้แจง:',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    'จงเลือกคำตอบที่ถูกต้องที่สุดเพียง 1 ข้อ',
                    style: TextStyle(color: Colors.black),
                  ),
                ]),
              ),
              Row(
                children: [CheckAns(), Text('ตัวเลือกที่ 1')],
              ),
              Row(
                children: [CheckAns(), Text('ตัวเลือกที่ 2')],
              ),
              Row(
                children: [CheckAns(), Text('ตัวเลือกที่ 3')],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Center(
                        child: Text(
                          'ย้อนกลับ',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[200],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(33.0),
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              popUpFinish(context),
                        );
                      },
                      child: Center(
                        child: Text(
                          'ส่งข้อสอบ',
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
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Image.asset('assets/imgtest.png'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CheckAns extends StatefulWidget {
  const CheckAns({Key? key}) : super(key: key);

  @override
  _CheckAnsState createState() => _CheckAnsState();
}

class _CheckAnsState extends State<CheckAns> {
  bool vl1 = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      shape: CircleBorder(),
      activeColor: Color.fromRGBO(111, 116, 183, 1),
      checkColor: Colors.white,
      value: vl1,
      onChanged: (value) {
        setState(() {
          vl1 = value!;
        });
      },
    );
  }
}
