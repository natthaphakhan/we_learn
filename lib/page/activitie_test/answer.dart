import 'package:flutter/material.dart';
// import 'package:we_learn/page/activitie_test/finish_activity.dart';
// import 'package:we_learn/page/learn/learn.dart';

class Answer extends StatefulWidget {
  const Answer({Key? key}) : super(key: key);

  @override
  _AnswerState createState() => _AnswerState();
}

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
          child: Text('คุณทบทวนข้อสอบเรียบร้อย\nและยืนยันการส่งคำตอบหรือไม่ ?'),
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
                    'ออกจากเฉลย',
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

class _AnswerState extends State<Answer> {
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
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'คำชี้แจง:',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        ' วิธีจัดองค์ประกอบภาพให้สวยงามด้วย\n กฎการถ่ายภาพขั้นพื้นฐานประกอบไปด้วยอะไรบ้าง',
                        style: TextStyle(color: Colors.black),
                      ),
                    ]),
              ),
              Container(
                width: 320,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey[400]!),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '1. กฎสามส่วน\n2. เน้นความสมมาตร\n3. ใช้เส้นนำสายตา',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                      },
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
                        Navigator.pop(context);
                      },
                      child: Center(
                        child: Text(
                          'ออกจากเฉลย',
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
