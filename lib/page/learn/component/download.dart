import 'package:flutter/material.dart';

class Download extends StatefulWidget {
  const Download({Key? key}) : super(key: key);

  @override
  _DownloadState createState() => _DownloadState();
}

class _DownloadState extends State<Download> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Image.asset('assets/document-blank.png'),
                ),
                Text('เอกสารประกอบกิจกรรมย่อย - ตอนที่ 2.2 กิจกรรม')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Image.asset('assets/document-blank.png'),
                ),
                Text('เอกสารประกอบกิจกรรมย่อย - ตอนที่ 2.4 กิจกรรม')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Image.asset('assets/document-blank.png'),
                ),
                Text('เอกสารประกอบกิจกรรมย่อย - ตอนที่ 3.2 กิจกรรม')
              ],
            ),
          ),
        ],
      )),
    );
  }
}
