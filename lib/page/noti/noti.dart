import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Noti extends StatefulWidget {
  const Noti({Key? key}) : super(key: key);

  @override
  _NotiState createState() => _NotiState();
}

class _NotiState extends State<Noti> {
  bool tapEdit = false;
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
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Text(
                    'แจ้งเตือน',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                )
              ],
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 28),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    if (tapEdit == false) {
                      tapEdit = true;
                    } else {
                      tapEdit = false;
                    }
                  });
                },
                child: tapEdit == false
                    ? Text(
                        'แก้ไข',
                        style: TextStyle(color: Colors.black),
                      )
                    : Text(
                        'เลือกทั้งหมด',
                        style: TextStyle(color: Colors.black),
                      ),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Slidable(
              actionPane: SlidableBehindActionPane(),
              secondaryActions: [
                Image.asset(
                  'assets/delete_noti.png',
                  fit: BoxFit.cover,
                )
              ],
              child: Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey[300]!)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.message_outlined,
                        color: Color.fromRGBO(111, 116, 183, 1),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            'การแจ้งเตือนจากระบบ 12/07/2564 10:35 น.ระบบจะทำการปรับปรุงแก้ไขและปิดระบบชั่วคราวในวันที่ 19/07/2564 เวลา 02.00 - 05.00 น. ขออภัยในความไม่สะดวก'),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Slidable(
              actionPane: SlidableBehindActionPane(),
              secondaryActions: [
                Image.asset(
                  'assets/delete_noti.png',
                  fit: BoxFit.cover,
                )
              ],
              child: Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey[300]!)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.message_outlined,
                        color: Color.fromRGBO(111, 116, 183, 1),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            'การแจ้งเตือนจากระบบ 12/07/2564 10:35 น.ระบบจะทำการปรับปรุงแก้ไขและปิดระบบชั่วคราวในวันที่ 19/07/2564 เวลา 02.00 - 05.00 น. ขออภัยในความไม่สะดวก'),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Slidable(
              actionPane: SlidableBehindActionPane(),
              secondaryActions: [
                Image.asset(
                  'assets/delete_noti.png',
                  fit: BoxFit.cover,
                )
              ],
              child: Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey[300]!)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.message_outlined,
                        color: Color.fromRGBO(111, 116, 183, 1),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            'การแจ้งเตือนจากระบบ 12/07/2564 10:35 น.ระบบจะทำการปรับปรุงแก้ไขและปิดระบบชั่วคราวในวันที่ 19/07/2564 เวลา 02.00 - 05.00 น. ขออภัยในความไม่สะดวก'),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: SizedBox(),
            ),
            tapEdit == true
                ? Container(
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
                              'อ่านแล้ว',
                              style: TextStyle(
                                  color: Colors.yellow[700],
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
                            child: Text('ลบ',
                                style: TextStyle(
                                  color: Colors.yellow[700],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                )),
                          ),
                        ),
                      ],
                    ),
                  )
                : Container(
                    child: null,
                  )
          ],
        ),
      ),
    );
  }
}
