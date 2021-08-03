import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart' as http;
import 'package:we_learn/page/search/component/card_search.dart';

bool isSearch = false;

// กำหนดรูปแบบข้อมูลที่เราจะดึงมาจาก api
class Api {
  final int id; // กำหนดชนิด
  Api(this.id);
}

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  // ดึงข้อมูลจาก api
  Future<List<Api>> _getApiData() async {
    var data = await http.get(
      Uri.parse(
          'https://jsonplaceholder.typicode.com/photos'), //  url ของ api ที่เราจะดึงข้อมูล
    );
    // ignore: unused_local_variable
    var jsonData = json.decode(data.body); // แปลงข้อมูล
    List<Api> api = []; // ใส่ใน array
    return api;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _getApiData(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.data == null) {
          return Center(
            child: const SpinKitChasingDots(
              color: Color.fromRGBO(111, 116, 183, 1),
            ),
          );
        } else {
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
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        BTPopword(),
                      ],
                    )
                  : Expanded(
                      child: Container(
                        child: ListView.builder(
                          itemBuilder: (context, i) {
                            return Padding(
                              padding: const EdgeInsets.fromLTRB(28, 26, 28, 0),
                              child: SearchCourseCard(),
                            );
                          },
                          itemCount: 10,
                        ),
                      ),
                    ));
        }
      },
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
                  onPressed: () {
                    // setState(() {
                    //   if (isSearch == true) {
                    //     isSearch = false;
                    //   } else {
                    //     isSearch = true;
                    //   }
                    // });
                  },
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
