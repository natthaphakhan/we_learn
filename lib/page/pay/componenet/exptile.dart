import 'package:flutter/material.dart';

class ExpTileinPay extends StatefulWidget {
  final String _title;
  ExpTileinPay(this._title);

  @override
  _ExpTileinPayState createState() => _ExpTileinPayState();
}

class _ExpTileinPayState extends State<ExpTileinPay> {
  bool vl = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        child: ExpansionTile(
          textColor: Color.fromRGBO(111, 116, 183, 1),
          iconColor: Color.fromRGBO(111, 116, 183, 1),
          title: Row(
            children: [
              SizedBox(
                height: 5,
                width: 20,
                child: Checkbox(
                  shape: CircleBorder(),
                  activeColor: Color.fromRGBO(111, 116, 183, 1),
                  checkColor: Colors.white,
                  value: vl,
                  onChanged: (value) {
                    setState(() {
                      vl = value!;
                    });
                  },
                ),
              ),
              SizedBox(width: 5,),
              Text(
                widget._title,
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/Krung_Thai_Bank_logo.svg.png'),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'ธนาคารกรุงไทย        844-026693-6',
                          style: TextStyle(fontSize: 14),
                        ),
                        Expanded(
                          child: SizedBox(),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            'คัดลอก',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(111, 116, 183, 1)),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Image.asset('assets/scb.png'),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'ธนาคารไทยพาณิชย์  409-197238-7',
                          style: TextStyle(fontSize: 14),
                        ),
                        Expanded(
                          child: SizedBox(),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            'คัดลอก',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(111, 116, 183, 1)),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ExpTileinPay2 extends StatefulWidget {
  final String _title;
  ExpTileinPay2(this._title);

  @override
  _ExpTileinPay2State createState() => _ExpTileinPay2State();
}

class _ExpTileinPay2State extends State<ExpTileinPay2> {
  bool vl = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        child: ExpansionTile(
          textColor: Color.fromRGBO(111, 116, 183, 1),
          iconColor: Color.fromRGBO(111, 116, 183, 1),
          title: Text(
            widget._title,
            style: TextStyle(fontSize: 14),
          ),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/Krung_Thai_Bank_logo.svg.png'),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'ธนาคารกรุงไทย        844-026693-6',
                          style: TextStyle(fontSize: 14),
                        ),
                        Expanded(
                          child: SizedBox(),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            'คัดลอก',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(111, 116, 183, 1)),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Image.asset('assets/scb.png'),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'ธนาคารไทยพาณิชย์  409-197238-7',
                          style: TextStyle(fontSize: 14),
                        ),
                        Expanded(
                          child: SizedBox(),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            'คัดลอก',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(111, 116, 183, 1)),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

