import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:we_learn/page/all_course/component/drop_down_filter.dart';
import 'package:we_learn/page/my_list/component/my_list_card.dart';

class MyList extends StatefulWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  bool valueBox1 = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 28, vertical: 12),
      child: ListView(
        children: [
          Row(
            children: [
              Icon(Icons.play_circle_outline),
              SizedBox(
                width: 5,
              ),
              Text(
                'คอร์สเรียนของฉัน',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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
                        return StatefulBuilder(
                            builder: (context, StateSetter mystate) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Material(
                                elevation: 1,
                                shadowColor: Colors.grey.withOpacity(0.3),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    topLeft: Radius.circular(15)),
                                child: Container(
                                  height: 52,
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: [
                                            GestureDetector(
                                                onTap: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Image.asset(
                                                    'assets/x.png')),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 120),
                                              child: Text(
                                                'ตัวกรอง',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 20),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 100),
                                              child: Text(
                                                'รีเซ็ต',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    color: Color.fromRGBO(
                                                        111, 116, 183, 1),
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
                                padding:
                                    const EdgeInsets.fromLTRB(28, 10, 0, 7),
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
                                padding:
                                    const EdgeInsets.fromLTRB(28, 10, 28, 0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 7),
                                          child: Text(
                                            'หมวดหมู่',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600),
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
                                              const EdgeInsets.only(bottom: 7),
                                          child: Text(
                                            'ประเภท',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                        DropdownFilter3(),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(28, 13, 0, 5),
                                child: Text(
                                  'ราคา',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: SizedBox(
                                  height: 15,
                                  width: double.maxFinite,
                                  child: Row(
                                    children: [
                                      Transform.scale(
                                        scale: 0.7,
                                        child: Checkbox(
                                          activeColor:
                                              Color.fromRGBO(111, 116, 183, 1),
                                          side: BorderSide(color: Colors.grey),
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
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: SizedBox(
                                  height: 15,
                                  width: double.maxFinite,
                                  child: Row(
                                    children: [
                                      Transform.scale(
                                        scale: 0.7,
                                        child: Checkbox(
                                          activeColor:
                                              Color.fromRGBO(111, 116, 183, 1),
                                          side: BorderSide(color: Colors.grey),
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
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(28, 13, 0, 5),
                                child: Text(
                                  'คะแนน',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: SizedBox(
                                  height: 15,
                                  width: double.maxFinite,
                                  child: Row(
                                    children: [
                                      Transform.scale(
                                        scale: 0.7,
                                        child: Checkbox(
                                          activeColor:
                                              Color.fromRGBO(111, 116, 183, 1),
                                          side: BorderSide(color: Colors.grey),
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
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: SizedBox(
                                  height: 15,
                                  width: double.maxFinite,
                                  child: Row(
                                    children: [
                                      Transform.scale(
                                        scale: 0.7,
                                        child: Checkbox(
                                          activeColor:
                                              Color.fromRGBO(111, 116, 183, 1),
                                          side: BorderSide(color: Colors.grey),
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
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: SizedBox(
                                  height: 15,
                                  width: double.maxFinite,
                                  child: Row(
                                    children: [
                                      Transform.scale(
                                        scale: 0.7,
                                        child: Checkbox(
                                          activeColor:
                                              Color.fromRGBO(111, 116, 183, 1),
                                          side: BorderSide(color: Colors.grey),
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
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: SizedBox(
                                  height: 15,
                                  width: double.maxFinite,
                                  child: Row(
                                    children: [
                                      Transform.scale(
                                        scale: 0.7,
                                        child: Checkbox(
                                          activeColor:
                                              Color.fromRGBO(111, 116, 183, 1),
                                          side: BorderSide(color: Colors.grey),
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
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(28, 15, 28, 15),
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
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Color.fromRGBO(111, 116, 183, 1),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
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
              )
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(30, 2, 0, 20),
            child: Text(
              'คอร์สเรียนทั้งหมด 3 รายการ',
              style: TextStyle(fontSize: 12),
            ),
          ),
          Slidable(
            actionPane: SlidableBehindActionPane(),
            child: MyListCard(),
            secondaryActions: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/delete.png',
                    fit: BoxFit.cover,
                    height: 262,
                  ))
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Slidable(
            actionPane: SlidableBehindActionPane(),
            child: MyListCard(),
            secondaryActions: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/delete.png',
                    fit: BoxFit.cover,
                    height: 262,
                  ))
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Slidable(
            actionPane: SlidableBehindActionPane(),
            child: MyListCard(),
            secondaryActions: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/delete.png',
                    fit: BoxFit.cover,
                    height: 262,
                  ))
            ],
          ),
        ],
      ),
    );
  }
}

class SearchMyList extends StatefulWidget {
  @override
  _SearchMyListState createState() => _SearchMyListState();
}

class _SearchMyListState extends State<SearchMyList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 36,
      margin: EdgeInsets.symmetric(horizontal: 28),
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        elevation: 1,
        child: TextField(
          decoration: InputDecoration(
            hintText: "ค้นหารายการของฉัน",
            prefixIcon: Icon(Icons.search),
            hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
            contentPadding: EdgeInsets.zero,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              borderSide:
                  BorderSide(color: Color.fromRGBO(111, 116, 183, 1), width: 1),
            ),
          ),
        ),
      ),
    );
  }
}
