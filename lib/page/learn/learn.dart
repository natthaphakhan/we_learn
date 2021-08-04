import 'package:flutter/material.dart';
import 'package:we_learn/page/learn/component/course.dart';
import 'package:we_learn/page/learn/component/download.dart';
import 'package:we_learn/page/learn/component/note.dart';
import 'package:we_learn/page/learn/component/talk.dart';
import 'package:we_learn/page/learn/component/test.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Learn extends StatefulWidget {
  const Learn({Key? key}) : super(key: key);

  @override
  _LearnState createState() => _LearnState();
}

class _LearnState extends State<Learn> {
  int corrent = 0;
  bool openslide = false;

  List<Widget> part = [
    Note(),
    CoursePart(),
    Download(),
    Talk(),
    Test()
  ];

  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: YoutubePlayer.convertUrlToId(
            "https://www.youtube.com/watch?v=eD2xFQlDS0o")
        .toString(),
    flags: YoutubePlayerFlags(
      autoPlay: true,
      mute: true,
    ),
  );

  void setpage(int i) {
    setState(() {
      corrent = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '   Photography Masterclass',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.black),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            YoutubePlayer(
              bottomActions: [
                CurrentPosition(),
                ProgressBar(
                  isExpanded: true,
                  colors: ProgressBarColors(
                    playedColor: Color.fromRGBO(111, 116, 183, 1),
                    handleColor: Color.fromRGBO(111, 116, 183, 1),
                  ),
                ),
                RemainingDuration(),
              ],
              controller: _controller,
              showVideoProgressIndicator: true,
              progressIndicatorColor: Color.fromRGBO(111, 116, 183, 1),
            ),
            openslide == false
                ? Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 25, horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.arrow_back_ios_rounded),
                            Expanded(child: SizedBox()),
                            Text(
                                'ตอนที่ 1.2 ความสำคัญของการเรียนรู้และ\nยอมรับความแตกต่างในการทำงาน'),
                            Expanded(child: SizedBox()),
                            Icon(Icons.arrow_forward_ios_rounded),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15),
                        child: Row(
                          children: [
                            Expanded(child: SizedBox()),
                            Icon(
                              Icons.visibility,
                              color: Colors.green,
                              size: 16,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  openslide = true;
                                });
                              },
                              child: Text(
                                '  เปิดสไลด์',
                                style: TextStyle(color: Colors.green),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                : Column(children: [
                    Image.asset('assets/slide.png'),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      child: Row(
                        children: [
                          Icon(
                            Icons.sync,
                            color: Colors.green,
                            size: 18,
                          ),
                          Text('Sync Slide',
                              style: TextStyle(color: Colors.green)),
                          Expanded(child: SizedBox()),
                          Icon(
                            Icons.visibility_off,
                            color: Colors.green,
                            size: 16,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                openslide = false;
                              });
                            },
                            child: Text(
                              '  ปิดสไลด์',
                              style: TextStyle(color: Colors.green),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.arrow_back_ios_rounded),
                        Expanded(child: SizedBox()),
                        Text(
                            'ตอนที่ 1.2 ความสำคัญของการเรียนรู้และ\nยอมรับความแตกต่างในการทำงาน'),
                        Expanded(child: SizedBox()),
                        Icon(Icons.arrow_forward_ios_rounded),
                      ],
                    ),
                  ]),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setpage(0);
                      },
                      child: Text(
                        'จดบันทึก',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: corrent == 0
                                ? Color.fromRGBO(111, 116, 183, 1)
                                : Colors.grey),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    GestureDetector(
                      onTap: () {
                        setpage(1);
                      },
                      child: Text(
                        'บทเรียน',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: corrent == 1
                                ? Color.fromRGBO(111, 116, 183, 1)
                                : Colors.grey),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    GestureDetector(
                      onTap: () {
                        setpage(2);
                      },
                      child: Text(
                        'ดาวน์โหลด',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: corrent == 2
                                ? Color.fromRGBO(111, 116, 183, 1)
                                : Colors.grey),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    GestureDetector(
                      onTap: () {
                        setpage(3);
                      },
                      child: Text(
                        'สนทนา',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: corrent == 3
                                ? Color.fromRGBO(111, 116, 183, 1)
                                : Colors.grey),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    GestureDetector(
                      onTap: () {
                        setpage(4);
                      },
                      child: Text(
                        'ข้อสอบ',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: corrent == 4
                                ? Color.fromRGBO(111, 116, 183, 1)
                                : Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: part[corrent],
            )
          ],
        ),
      ),
    );
  }
}
