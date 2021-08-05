import 'package:flutter/material.dart';
import 'package:we_learn/page/noti/noti.dart';

class CourseFrowmMe extends StatefulWidget {
  const CourseFrowmMe({Key? key}) : super(key: key);

  @override
  _CourseFrowmMeState createState() => _CourseFrowmMeState();
}

class _CourseFrowmMeState extends State<CourseFrowmMe> {
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
                    'คอร์สเรียนจากฉัน',
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
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Noti()),
                  );
                },
                child: Icon(
                  Icons.notifications_outlined,
                  color: Color.fromRGBO(111, 116, 183, 1),
                ),
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'คอร์สเรียนทั้งหมด 3 รายการ',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: SizedBox(
                  width: 154,
                  height: 34,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Center(
                      child: Text(
                        'สร้างคอร์ส',
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
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [Icon(Icons.article_outlined), Text(' รายการ')],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 5, 70),
                      child: Icon(Icons.search),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'การสื่อสารเพื่อธุรกิจและการเจรจาต่อรอง\nCommunication for business and Negotiation',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.online_prediction_outlined,
                              color: Colors.grey,
                            ),
                            Text(
                              '  คอร์สเรียนออนไลน์',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.warning_amber_outlined,
                              color: Colors.grey,
                            ),
                            Text(
                              '  รอการอนุมัติ',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 5, 70),
                      child: Icon(Icons.search),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'การสื่อสารเพื่อธุรกิจและการเจรจาต่อรอง\nCommunication for business and Negotiation',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.online_prediction_outlined,
                              color: Colors.grey,
                            ),
                            Text(
                              '  คอร์สเรียนออนไลน์',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.warning_amber_outlined,
                              color: Colors.grey,
                            ),
                            Text(
                              '  อนุมัติแล้ว',
                              style: TextStyle(color: Colors.green),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 5, 70),
                      child: Icon(Icons.search),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'การสื่อสารเพื่อธุรกิจและการเจรจาต่อรอง\nCommunication for business and Negotiation',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.online_prediction_outlined,
                              color: Colors.grey,
                            ),
                            Text(
                              '  คอร์สเรียนออนไลน์',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.warning_amber_outlined,
                              color: Colors.grey,
                            ),
                            Text(
                              '  ไม่ได้รับการอนุมัติ',
                              style: TextStyle(color: Colors.red),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
