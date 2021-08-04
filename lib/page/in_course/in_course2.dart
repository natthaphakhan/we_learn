import 'package:flutter/material.dart';
import 'package:we_learn/page/in_course/component/exp_tile.dart';
import 'package:we_learn/page/in_course/component/reccourse.dart';
import 'package:we_learn/page/learn/learn.dart';
import 'package:we_learn/page/pay/pay.dart';
import 'package:we_learn/page/sign_in/sign_in.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../launcher.dart';

class InCourse2 extends StatefulWidget {
  const InCourse2({Key? key}) : super(key: key);

  @override
  _InCourse2State createState() => _InCourse2State();
}

class _InCourse2State extends State<InCourse2> {
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
          padding: const EdgeInsets.only(left: 20),
          child: GestureDetector(
              onTap: () => scaffoldKey.currentState!.openDrawer(),
              child: Image.asset('assets/menu_line_purple.png')),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
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
                Text(
                  'Photography Masterclass: \nA Complete Guide to Photography',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(40, 0, 20, 5),
            child: Text(
                'หลักสูตรมาสเตอร์เตอร์คลาสแห่งการถ่ายภาพ: การถ่ายภาพเบื้องต้นฉบับสมบูรณ์',
                style: TextStyle(fontSize: 14, color: Colors.grey)),
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
          Expanded(
            child: ListView(
              children: [
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
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(95, 0, 0, 0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'ราคา:',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            'จำนวนที่เปิดรับ:',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            'หมวดหมู่:',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            'ประเภท:',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            'จำนวนบทเรียน:',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            'ใบประกาศนียบัตร:',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '2,700 บาท',
                          ),
                          Text(
                            '100 คน',
                          ),
                          Text(
                            'ทักษะการสื่อสาร',
                          ),
                          Text(
                            'คอร์สออนไลน์',
                          ),
                          Text(
                            '6 บทเรียน',
                          ),
                          Text(
                            'ไม่มี',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Image.asset('assets/courseicon.png'),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'วัตถุประสงค์',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(38, 0, 38, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '1. เพื่อให้ผู้เข้าอบรมเข้าใจความแตกต่างของบุคคลในสถานที่ทำงาน',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        '2. มีความเข้าใจในเรื่องความแตกต่างในรูปแบบ Generation และการทำงานระหว่างGeneration',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        '3. ทราบถึงวิธีในการติดต่อประสานงานกับบุคคลที่มีความแตกต่าง และสามารถนำไปปรับใช้ได้',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Image.asset('assets/courseicon.png'),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'เกณฑ์การประเมิน',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 38),
                  child: Text(
                    'เข้าร่วมกิจกรรมการเรียน (Course Progress) มากกว่า 50% ขึ้นไป',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/teach2.png',
                        scale: 2,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'ผู้สอน',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(38, 5, 15, 0),
                      child: Image.asset('assets/teacher.png'),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ดร. อัญชนา กลิ่นเทียน',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'อาจารย์ประจำสาขานวัตกรรมสื่อสารสังคม\nวิทยาลัยนวัตกรรมสื่อสารสังคม \nมหาวิทยาลัยศรีนครินทรวิโรฒ',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Row(
                          children: [
                            Text(
                              'ดูประวัติ',
                              style: TextStyle(
                                  color: Color.fromRGBO(111, 116, 183, 1)),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Color.fromRGBO(111, 116, 183, 1),
                              size: 14,
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
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
                          'ซ่อนรายละเอียด',
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
                    padding: const EdgeInsets.symmetric(vertical: 20),
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Learn()),
                      );
                    },
                    child: Text(
                      'เข้าเรียน',
                      style: TextStyle(
                          color: Colors.white,
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
