import 'package:flutter/material.dart';
import 'package:we_learn/page/in_course/in_course.dart';

class RecInVdo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => InCourse()),
        );
      },
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                'assets/img_course_1.jpeg',
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    minVerticalPadding: 0,
                    title: Text(
                      'Photography Masterclass: A Complete Guide to Photography',
                      style: TextStyle(fontSize: 12),
                    ),
                    subtitle: Text(
                      'หลักสูตรมาสเตอร์เตอร์คลาสแห่งการถ่ายภาพ: การถ่ายภาพเบื้องต้นฉบับสมบูรณ์',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow[700],
                          size: 14,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow[700],
                          size: 14,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow[700],
                          size: 14,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow[700],
                          size: 14,
                        ),
                        Icon(
                          Icons.star_border_outlined,
                          color: Colors.yellow[700],
                          size: 14,
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
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      '฿ 2,700.00',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.yellow[800],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 7, vertical: 5),
                      child: Text(
                        'ยอดนิยม',
                      ),
                    ),
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
