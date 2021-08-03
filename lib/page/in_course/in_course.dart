import 'package:flutter/material.dart';
import 'package:we_learn/page/in_course/component/exp_tile.dart';
import 'package:we_learn/page/in_course/component/reccourse.dart';
import 'package:we_learn/page/sign_in/sign_in.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../launcher.dart';

class InCourse extends StatefulWidget {
  const InCourse({Key? key}) : super(key: key);

  @override
  _InCourseState createState() => _InCourseState();
}

class _InCourseState extends State<InCourse> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: YoutubePlayer.convertUrlToId(
            "https://www.youtube.com/watch?v=eD2xFQlDS0o")
        .toString(),
    flags: YoutubePlayerFlags(
      autoPlay: true,
      mute: true,
    ),
  );
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
          child: GestureDetector(
              onTap: () => scaffoldKey.currentState!.openDrawer(),
              child: Image.asset('assets/menu_line_purple.png')),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 28),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.favorite_outline,
                color: Color.fromRGBO(111, 116, 183, 1),
              ),
            ),
          )
        ],
      ),
      key: scaffoldKey,
      drawer: Drawer(
        child: ListView(
          children: [
            SizedBox(
              height: 25,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipOval(
                  child: Image.network(
                    'https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Y2F0fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('ณัฐปคัลภ์ ขุนจันทร์',
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromRGBO(111, 116, 183, 1),
                        fontWeight: FontWeight.bold)),
                Text(
                  'สมาชิก',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.home_outlined,
                      color: Color.fromRGBO(111, 116, 183, 1),
                    )),
                TextButton(
                  child: Text('หน้าแรก',
                      style: TextStyle(
                          color: Color.fromRGBO(111, 116, 183, 1),
                          fontSize: 15)),
                  onPressed: () {
                    Route route =
                        MaterialPageRoute(builder: (context) => Home());
                    Navigator.pushReplacement(context, route);

                    scaffoldKey.currentState!.openEndDrawer();
                  },
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.settings_outlined,
                      color: Color.fromRGBO(111, 116, 183, 1),
                    )),
                TextButton(
                  child: Text('แก้ไขโปรไฟล์',
                      style: TextStyle(
                          color: Color.fromRGBO(111, 116, 183, 1),
                          fontSize: 15)),
                  onPressed: () {},
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.question_answer_outlined,
                      color: Color.fromRGBO(111, 116, 183, 1),
                    )),
                TextButton(
                  child: Text('คำถามที่พบบ่อย',
                      style: TextStyle(
                          color: Color.fromRGBO(111, 116, 183, 1),
                          fontSize: 15)),
                  onPressed: () {},
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.translate_outlined,
                      color: Color.fromRGBO(111, 116, 183, 1),
                    )),
                TextButton(
                  child: Text('ภาษา',
                      style: TextStyle(
                          color: Color.fromRGBO(111, 116, 183, 1),
                          fontSize: 15)),
                  onPressed: () {},
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.exit_to_app_outlined,
                      color: Colors.red,
                    )),
                TextButton(
                  child: Text('ออกจากระบบ',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                  onPressed: () {
                    Route route =
                        MaterialPageRoute(builder: (context) => SignIn());
                    Navigator.pushReplacement(context, route);

                    scaffoldKey.currentState!.openEndDrawer();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 20,
                            ),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                        Expanded(
                          child: Text(
                            'Photography Masterclass: A Complete Guide to Photography',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(40, 0, 20, 5),
                  child: Expanded(
                    child: Text(
                        'หลักสูตรมาสเตอร์เตอร์คลาสแห่งการถ่ายภาพ: การถ่ายภาพเบื้องต้นฉบับสมบูรณ์',
                        style: TextStyle(fontSize: 12, color: Colors.grey)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 35),
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
                            color: Colors.black,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
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
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Image.asset('assets/courseicon.png'),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'คำอธิบายรายคอร์ส',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                  child: Text(
                    'หลักสูตรนี้จัดทำขึ้นเพื่อให้ผู้เข้าอบรมได้เรียนรู้ความหลากหลายในที่ทำงาน ประโยชน์ของมุมมองที่แตกต่าง ความคิดที่หลากหลาย ที่จะทำให้เกิดสิ่งใหม่ๆ ได้แลกเปลี่ยนประสบการณ์ เรียนรู้ที่จะยอมรับซึ่งกันและกัน เกิดความคิดต่อยอด รวมถึงเข้าใจในความแตกต่างของบุคคล การยอมรับในความคิดของผู้อื่น',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  child: Expanded(
                      child: Divider(
                    thickness: .5,
                    color: Colors.grey[300],
                  )),
                ),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: TextButton(
                        child: Text(
                          'แสดงรายละเอียด',
                          style: TextStyle(
                              color: Color.fromRGBO(111, 116, 183, 1),
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Row(
                      children: [
                        Image.asset('assets/video-gallery-line.png'),
                        Text(
                          ' บทเรียน',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ExpTile(
                      '1 คิดต่างอย่างมีเหตุเพื่อต่อยอดความสำเร็จในองค์กร'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ExpTile('2 ยุคสมัยที่แตกต่างกัน'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ExpTile('3 ความแตกต่างทางบุคลิกภาพ'),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.article_outlined),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'คอร์สเรียนที่คุณอาจสนใจ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                          'เราว่าคอร์สเหล่านี้ก็ดูเหมาะกับคุณดีนะ!',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      RecInVdo(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Expanded(
                      child: Divider(
                    thickness: .5,
                    color: Colors.grey[400],
                  )),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: RecInVdo(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Expanded(
                      child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[400],
                  )),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: RecInVdo(),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20) ,
                    child: Text(
                      'ดูทั้งหมด',
                      style: TextStyle(
                          color: Color.fromRGBO(111, 116, 183, 1),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: double.maxFinite,
            height: 50,
            color: Color.fromRGBO(111, 116, 183, 1),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      '฿ 9,999',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      'สมัครเรียน',
                      style: TextStyle(
                          color: Colors.yellow[700],
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
