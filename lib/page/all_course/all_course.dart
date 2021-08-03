import 'package:flutter/material.dart';
import 'package:we_learn/page/all_course/component/all_course_card.dart';
import 'package:we_learn/page/all_course/component/search_box.dart';

class AllCourse extends StatefulWidget {
  const AllCourse({Key? key}) : super(key: key);

  @override
  _AllCourseState createState() => _AllCourseState();
}

class _AllCourseState extends State<AllCourse> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            appBar: AppBar(
              titleSpacing: 0,
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
              title: Padding(
                padding: const EdgeInsets.only(left: 28),
                child: Image.asset('assets/menu_line_purple.png'),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 28),
                  child: GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.notifications_outlined,
                      color: Color.fromRGBO(111, 116, 183, 1),
                    ),
                  ),
                )
              ],
            ),
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(28, 27.5, 28, 0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios_rounded,
                        size: 16,
                      ),
                      Text(
                        ' คอร์สเรียน',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 16),
                      ),
                      Expanded(child: SizedBox()),
                      Image.asset('assets/filter.png')
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 15.5, 0, 0),
                  child: BoxSearch(),
                ),
                Expanded(
                  child: Container(
                    child: ListView.builder(
                      itemBuilder: (context, i) {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(28, 26, 28, 0),
                          child: AllCourseCard(),
                        );
                      },
                      itemCount: 10,
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
