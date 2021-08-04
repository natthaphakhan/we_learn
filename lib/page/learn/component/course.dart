import 'package:flutter/material.dart';

class CoursePart extends StatefulWidget {
  const CoursePart({Key? key}) : super(key: key);

  @override
  _CoursePartState createState() => _CoursePartState();
}

class _CoursePartState extends State<CoursePart> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: ExpTileinLearn(
                  '1 คิดต่างอย่างมีเหตุเพื่อต่อยอดความ\nสำเร็จในองค์กร'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: ExpTileinLearn('2 ยุคสมัยที่แตกต่างกัน'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: ExpTileinLearn('3 ความแตกต่างทางบุคลิกภาพ'),
            ),
          ],
        ),
      ),
    );
  }
}

class ExpTileinLearn extends StatelessWidget {
  final String text;
  ExpTileinLearn(this.text);
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      borderRadius: BorderRadius.circular(5),
      child: Container(
        child: ExpansionTile(
          textColor: Color.fromRGBO(111, 116, 183, 1),
          iconColor: Color.fromRGBO(111, 116, 183, 1),
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 5, 5),
                child: Image.asset('assets/inprogress.png'),
              ),
              Text(
                text,
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 3, 0, 0),
                    child: Icon(
                      Icons.play_circle,
                      size: 14,
                      color: Color.fromRGBO(111, 116, 183, 1),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'ตอนที่ 1.1 ความหลากหลายในการทำงาน\n(00:00:48)',
                    style: TextStyle(fontSize: 12),
                  ),
                  Expanded(
                    child: SizedBox(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Image.asset('assets/greencheck.png'),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 3, 0, 0),
                    child: Icon(
                      Icons.play_circle,
                      size: 14,
                      color: Color.fromRGBO(111, 116, 183, 1),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'ตอนที่ 1.2 ความหลากหลายคืออะไร\n(00:02:30)',
                    style: TextStyle(fontSize: 12),
                  ),
                  Expanded(
                    child: SizedBox(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text('75%'),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 3, 0, 0),
                    child: Icon(
                      Icons.play_circle,
                      size: 14,
                      color: Color.fromRGBO(111, 116, 183, 1),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'ตอนที่ 1.3 ความแตกต่างและความหลากหลาย\nในการทำงาน\n(00:04:09)',
                    style: TextStyle(fontSize: 12),
                  ),
                  Expanded(
                    child: SizedBox(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text('0%'),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
