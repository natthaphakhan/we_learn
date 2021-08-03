import 'package:flutter/material.dart';

class AllCourseCard extends StatefulWidget {
  const AllCourseCard({Key? key}) : super(key: key);

  @override
  _AllCourseCardState createState() => _AllCourseCardState();
}

class _AllCourseCardState extends State<AllCourseCard> {
  bool heartTap = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 319,
      height: 269,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Color.fromRGBO(216, 216, 216, 0.7),
            offset: Offset(0, 3),
            blurRadius: 6,
            spreadRadius: -7)
      ]),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 122,
              width: double.maxFinite,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                child: Image.asset(
                  'assets/img_course_1.jpeg',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(13, 10, 13, 0),
              child: ListTile(
                minVerticalPadding: 0,
                contentPadding: EdgeInsets.zero,
                title: Text('Work With Diversity',
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                subtitle: Text(
                    'คิดต่างอย่างมีเหตุผลเพื่อต่อยอดความสำเร็จในองค์กร',
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
              ),
            ),
            Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(left: 13),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow[700],
                    size: 16,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow[700],
                    size: 16,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow[700],
                    size: 16,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow[700],
                    size: 16,
                  ),
                  Icon(
                    Icons.star_border_outlined,
                    color: Colors.yellow[700],
                    size: 16,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text('4.8 (99,999)',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(13, 0, 13, 12),
              child: Row(
                children: [
                  Text('฿ 1,500',
                      style: TextStyle(
                          color: Color.fromRGBO(111, 116, 183, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  Expanded(child: SizedBox()),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          // checkHeartTap();
                        });
                      },
                      child: heartTap == false
                          ? Icon(Icons.favorite_border_rounded,
                              color: Colors.grey.withOpacity(0.4))
                          : Icon(Icons.favorite_rounded, color: Colors.red))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
