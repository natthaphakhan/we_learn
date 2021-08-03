import 'package:flutter/material.dart';
import 'package:we_learn/page/in_news/in_news.dart';

class AllNewsCard extends StatefulWidget {
  final String img;
  const AllNewsCard({ Key? key ,required this.img}) : super(key: key);

  @override
  _AllNewsCardState createState() => _AllNewsCardState();
}

class _AllNewsCardState extends State<AllNewsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
              width: 318,
              height: 225,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(216, 216, 216, 0.7),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                    spreadRadius: -7)
              ]),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InNews()),
                  );
                },
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.maxFinite,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          child: Image.asset(
                            widget.img,
                            width: 317.5,
                            height: 120,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(13, 5, 13, 0),
                        child: Text(
                            'หลุดข้อมูลสเปค Google Pixel 5 ชุดใหญ่แทบทุกซอกทุกมุม',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500)),
                      ),
                      Expanded(child: SizedBox()),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(13, 10, 13, 10),
                        child: Row(
                          children: [
                            Icon(
                              Icons.timer_outlined,
                              color: Colors.grey,
                              size: 12,
                            ),
                            Text(' 12/07/2567 เวลา 08.32 น.',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
  }
}