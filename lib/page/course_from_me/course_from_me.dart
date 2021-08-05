import 'package:flutter/material.dart';

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
              SizedBox(
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
              Row(
                children: [
                  Icon(Icons.list),
                  Text('รายการ')
                ],
              ),
              Row(
                children: [
                  Icon(Icons.search),
                  Text('data')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
