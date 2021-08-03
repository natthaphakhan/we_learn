import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class NewsSlide extends StatefulWidget {
  final List list = [
    'assets/news_1.png',
    'assets/news_2.png',
    'assets/news_3.png',
  ];

  @override
  _NewsSlideState createState() => _NewsSlideState();
}

class _NewsSlideState extends State<NewsSlide> {
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
    List<Widget> card = NewsSlide()
        .list
        .map(
          (i) => Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Container(
              width: 232,
              height: 262,
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
          ),
        )
        .toList();

    return Column(
      children: [
        CarouselSlider(
          items: card,
          options: CarouselOptions(
              viewportFraction: 0.67,
              height: 262,
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
