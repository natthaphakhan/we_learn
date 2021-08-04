import 'package:flutter/material.dart';

class Talk extends StatefulWidget {
  const Talk({Key? key}) : super(key: key);

  @override
  _TalkState createState() => _TalkState();
}

class _TalkState extends State<Talk> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
            child: ListView(
          children: [
            TextField(
              keyboardType: TextInputType.multiline,
              maxLines: 3,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(
                      color: Color.fromRGBO(111, 116, 183, 1), width: 1),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Expanded(child: SizedBox()),
                  SizedBox(
                    height: 30,
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Center(
                        child: Text(
                          'ตั้งหัวข้อสนทนา',
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
                ],
              ),
            ),
            Material(
              elevation: 2,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: 320,
                height: 40,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text('ดูข้อความ/ตอบกลับ'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/kam.png'),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('มัลธนา พจนวราภรณ์ |'),
                            Image.asset('assets/megaphone.png'),
                            Text('07/07/2564 12:01')
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'โหลดแบบฝึกหัดเสร็จแล้วจะไปอยู่ตรงไหน\nหรอคะ?',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Expanded(child: SizedBox()),
                Image.asset('assets/reply.png')
              ],
            )
          ],
        )),
      ),
    );
  }
}
