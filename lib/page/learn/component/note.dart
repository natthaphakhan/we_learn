import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Note extends StatefulWidget {
  const Note({Key? key}) : super(key: key);

  @override
  _NoteState createState() => _NoteState();
}

class _NoteState extends State<Note> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Container(
                width: 320,
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: 5,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(
                          color: Color.fromRGBO(111, 116, 183, 1), width: 1),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Expanded(child: SizedBox()),
                    SizedBox(
                      height: 30,
                      width: 80,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Center(
                          child: Text(
                            'บันทึก',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(111, 116, 183, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(33.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Slidable(
                actionPane: SlidableBehindActionPane(),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    children: [
                      Icon(
                        Icons.play_circle,
                        size: 18,
                        color: Color.fromRGBO(111, 116, 183, 1),
                      ),
                      Text('  00:00:01 : เริ่มต้น')
                    ],
                  ),
                ),
                secondaryActions: [
                  Image.asset(
                    'assets/edit.png',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/del.png',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              Slidable(
                actionPane: SlidableBehindActionPane(),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    children: [
                      Icon(
                        Icons.play_circle,
                        size: 18,
                        color: Color.fromRGBO(111, 116, 183, 1),
                      ),
                      Text('  00:00:12 : เข้าบทเรียน')
                    ],
                  ),
                ),
                secondaryActions: [
                  Image.asset(
                    'assets/edit.png',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/del.png',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
