import 'package:flutter/material.dart';
import 'package:we_learn/page/search/component/card_search.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  bool isSearch = false;
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
