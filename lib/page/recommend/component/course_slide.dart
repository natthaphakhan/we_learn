import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:we_learn/page/in_course/in_course.dart';

class Slide extends StatefulWidget {
  final List list = [
    'assets/img_course_1.jpeg',
    'assets/img_course_2.jpeg',
    'assets/img_course_3.jpeg',
  ];

  @override
  _SlideState createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  CarouselController _controller = CarouselController();
  int _current = 0;
  bool heartTap = false;

  void checkHeartTap() {
    if (heartTap == true) {
      heartTap = false;
    } else {
      heartTap = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> card = Slide()
        .list
        .map(
          (i) => GestureDetector(
            onTap: (){
              Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InCourse()),
                  );
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              width: 232,
              height: 300,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(216, 216, 216, 0.7),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                    spreadRadius: -7)
              ]),
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 112,
                      width: double.maxFinite,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        child: Image.asset(
                          i,
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
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500)),
                        subtitle: Text(
                            'คิดต่างอย่างมีเหตุผลเพื่อต่อยอดความสำเร็จในองค์กร',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400)),
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
                                  fontWeight: FontWeight.bold)),
                          Expanded(child: SizedBox()),
                          GestureDetector(
                              onTap: () {
                                setState(() {
                                  checkHeartTap();
                                });
                              },
                              child: heartTap == false
                                  ? Icon(Icons.favorite_border_rounded,
                                      color: Colors.grey.withOpacity(0.4))
                                  : Icon(Icons.favorite_rounded,
                                      color: Colors.red))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
        .toList();

    return Column(
      children: [
        CarouselSlider(
          items: card,
          options: CarouselOptions(
              viewportFraction: 0.67,
              height: 300,
              enableInfiniteScroll: true,
              autoPlay: false,
              enlargeCenterPage: false,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: card.asMap().entries.map((entry) {
            return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 10.0,
                  height: 10.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _current == entry.key
                          ? Color.fromRGBO(111, 116, 183, 1)
                          : Colors.grey.withOpacity(0.3)),
                ));
          }).toList(),
        ),
      ],
    );
  }
}
