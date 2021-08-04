import 'package:flutter/material.dart';

class InTest extends StatefulWidget {
  const InTest({Key? key}) : super(key: key);

  @override
  _InTestState createState() => _InTestState();
}

class _InTestState extends State<InTest> {
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
                children: [Icon(Icons.)],
              )
            ],
          ),
        ),
      ),
    );
  }
}
