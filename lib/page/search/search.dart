import 'package:flutter/material.dart';
import 'package:we_learn/page/all_course/component/drop_down_filter.dart';
import 'package:we_learn/page/search/component/card_search.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  bool isSearch = false;
  bool valueBox1 = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 28, vertical: 0),
      child: isSearch == false
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'การค้นหายอดนิยม',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                    onDoubleTap: () {
                      setState(() {
                        if (isSearch == true) {
                          isSearch = false;
                        } else {
                          isSearch = true;
                        }
                      });
                    },
                    child: BTPopword()),
              ],
            )
          : Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 5, 0),
                        child: Icon(
                          Icons.article_outlined,
                          size: 20,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'ผลการค้นหา ‘ถ่ายภาพ’',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            'ค้นพบ 8 รายการ',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Expanded(child: SizedBox()),
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15)),
                              ),
                              context: context,
                              builder: (context) {
                                return StatefulBuilder(builder:
                                    (context, StateSetter mystate) {
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Material(
                                        elevation: 1,
                                        shadowColor:
                                            Colors.grey.withOpacity(0.3),
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(15),
                                            topLeft: Radius.circular(15)),
                                        child: Container(
                                          height: 52,
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: 20),
                                                child: Row(
                                                  children: [
                                                    GestureDetector(
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child: Image.asset(
                                                            'assets/x.png')),
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.only(
                                                              left: 120),
                                                      child: Text(
                                                        'ตัวกรอง',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700,
                                                            fontSize: 20),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.only(
                                                              left: 100),
                                                      child: Text(
                                                        'รีเซ็ต',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600,
                                                            color: Color
                                                                .fromRGBO(
                                                                    111,
                                                                    116,
                                                                    183,
                                                                    1),
                                                            fontSize: 12),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            28, 10, 0, 7),
                                        child: Text(
                                          'เรียงลำดับตาม',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Container(
                                          alignment: Alignment.topCenter,
                                          child: DropdownFilter1()),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            28, 10, 28, 0),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 7),
                                                  child: Text(
                                                    'หมวดหมู่',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight
                                                                .w600),
                                                  ),
                                                ),
                                                DropdownFilter2()
                                              ],
                                            ),
                                            Expanded(child: SizedBox()),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 7),
                                                  child: Text(
                                                    'ประเภท',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight
                                                                .w600),
                                                  ),
                                                ),
                                                DropdownFilter3(),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            28, 13, 0, 5),
                                        child: Text(
                                          'ราคา',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 12),
                                        child: SizedBox(
                                          height: 15,
                                          width: double.maxFinite,
                                          child: Row(
                                            children: [
                                              Transform.scale(
                                                scale: 0.7,
                                                child: Checkbox(
                                                  activeColor:
                                                      Color.fromRGBO(
                                                          111, 116, 183, 1),
                                                  side: BorderSide(
                                                      color: Colors.grey),
                                                  checkColor: Colors.white,
                                                  value: valueBox1,
                                                  onChanged: (value) {
                                                    mystate(() {
                                                      valueBox1 = value!;
                                                    });
                                                  },
                                                ),
                                              ),
                                              Text(
                                                "คอร์สเรียนแบบชำระเงิน (327)",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 12),
                                        child: SizedBox(
                                          height: 15,
                                          width: double.maxFinite,
                                          child: Row(
                                            children: [
                                              Transform.scale(
                                                scale: 0.7,
                                                child: Checkbox(
                                                  activeColor:
                                                      Color.fromRGBO(
                                                          111, 116, 183, 1),
                                                  side: BorderSide(
                                                      color: Colors.grey),
                                                  checkColor: Colors.white,
                                                  value: valueBox1,
                                                  onChanged: (value) {
                                                    mystate(() {
                                                      valueBox1 = value!;
                                                    });
                                                  },
                                                ),
                                              ),
                                              Text(
                                                "คอร์สเรียนแบบฟรี (56)",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            28, 13, 0, 5),
                                        child: Text(
                                          'คะแนน',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 12),
                                        child: SizedBox(
                                          height: 15,
                                          width: double.maxFinite,
                                          child: Row(
                                            children: [
                                              Transform.scale(
                                                scale: 0.7,
                                                child: Checkbox(
                                                  activeColor:
                                                      Color.fromRGBO(
                                                          111, 116, 183, 1),
                                                  side: BorderSide(
                                                      color: Colors.grey),
                                                  checkColor: Colors.white,
                                                  value: valueBox1,
                                                  onChanged: (value) {
                                                    mystate(() {
                                                      valueBox1 = value!;
                                                    });
                                                  },
                                                ),
                                              ),
                                              Text(
                                                "4.5 คะแนนขึ้นไป",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 12),
                                        child: SizedBox(
                                          height: 15,
                                          width: double.maxFinite,
                                          child: Row(
                                            children: [
                                              Transform.scale(
                                                scale: 0.7,
                                                child: Checkbox(
                                                  activeColor:
                                                      Color.fromRGBO(
                                                          111, 116, 183, 1),
                                                  side: BorderSide(
                                                      color: Colors.grey),
                                                  checkColor: Colors.white,
                                                  value: valueBox1,
                                                  onChanged: (value) {
                                                    mystate(() {
                                                      valueBox1 = value!;
                                                    });
                                                  },
                                                ),
                                              ),
                                              Text(
                                                "4.0 คะแนนขึ้นไป (195)",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 12),
                                        child: SizedBox(
                                          height: 15,
                                          width: double.maxFinite,
                                          child: Row(
                                            children: [
                                              Transform.scale(
                                                scale: 0.7,
                                                child: Checkbox(
                                                  activeColor:
                                                      Color.fromRGBO(
                                                          111, 116, 183, 1),
                                                  side: BorderSide(
                                                      color: Colors.grey),
                                                  checkColor: Colors.white,
                                                  value: valueBox1,
                                                  onChanged: (value) {
                                                    mystate(() {
                                                      valueBox1 = value!;
                                                    });
                                                  },
                                                ),
                                              ),
                                              Text(
                                                "3.5 คะแนนขึ้นไป (84)",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 12),
                                        child: SizedBox(
                                          height: 15,
                                          width: double.maxFinite,
                                          child: Row(
                                            children: [
                                              Transform.scale(
                                                scale: 0.7,
                                                child: Checkbox(
                                                  activeColor:
                                                      Color.fromRGBO(
                                                          111, 116, 183, 1),
                                                  side: BorderSide(
                                                      color: Colors.grey),
                                                  checkColor: Colors.white,
                                                  value: valueBox1,
                                                  onChanged: (value) {
                                                    mystate(() {
                                                      valueBox1 = value!;
                                                    });
                                                  },
                                                ),
                                              ),
                                              Text(
                                                "3.0 คะแนนขึ้นไป (23)",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            28, 15, 28, 15),
                                        child: Container(
                                          width: 334,
                                          height: 36,
                                          alignment: Alignment.topCenter,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Center(
                                              child: Text(
                                                'นำไปใช้',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              primary: Color.fromRGBO(
                                                  111, 116, 183, 1),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        5.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                });
                              });
                        },
                        child: Image.asset('assets/filter.png'),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    child: ListView.builder(
                      itemBuilder: (context, i) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 25),
                          child: SearchCourseCard(),
                        );
                      },
                      itemCount: 10,
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}

class BoxSearch extends StatefulWidget {
  @override
  _BoxSearchState createState() => _BoxSearchState();
}

class _BoxSearchState extends State<BoxSearch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 36,
      margin: EdgeInsets.symmetric(horizontal: 28),
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        elevation: 1,
        child: GestureDetector(
          onDoubleTap: () {
            // setState(() {
            //   if (isSearch == true) {
            //     isSearch = false;
            //   } else {
            //     isSearch = true;
            //   }
            // });
          },
          child: TextField(
            decoration: InputDecoration(
              hintText: "ค้นหา",
              prefixIcon: Icon(Icons.search),
              hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
              contentPadding: EdgeInsets.zero,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                borderSide: BorderSide(
                    color: Color.fromRGBO(111, 116, 183, 1), width: 1),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BTPopword extends StatefulWidget {
  @override
  _BTPopwordState createState() => _BTPopwordState();
}

class _BTPopwordState extends State<BTPopword> {
  final List listWord = [
    'เรียนดี',
    'Microsoft Excel',
    'ภาษาอังกฤษ',
    'การถ่ายภาพ',
    'Adobe Illustrator CC',
    'Photoshop',
    'Python',
    'Wordpress',
    'C#',
    'สื่อสารองค์กร'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        children: listWord
            .map(
              (i) => Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    side: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  child: Text(
                    i,
                    style: TextStyle(color: Colors.black, fontSize: 13),
                  ),
                ),
              ),
            )
            .toList()
            .cast<Widget>(),
      ),
    );
  }
}
