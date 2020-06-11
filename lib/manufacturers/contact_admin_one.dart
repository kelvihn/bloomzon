import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:bloomzon/manufacturers/write_admin.dart';
import 'package:bloomzon/manufacturers/reply_review.dart';

class ContactAdmin extends StatefulWidget {
  @override
  _ContactAdminState createState() => _ContactAdminState();
}

class _ContactAdminState extends State<ContactAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            firstBox(),
            GestureDetector(
                child: caseBox(),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => ReplyCase()));
                }),
            paddedDivider(),
            GestureDetector(
                child: caseBox(),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => ReplyCase()));
                }),
            paddedDivider(),
            GestureDetector(
                child: caseBox(),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => ReplyCase()));
                }),
            paddedDivider(),
            GestureDetector(
                child: caseBox(),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => ReplyCase()));
                }),
            paddedDivider(),
            GestureDetector(
                child: caseBox(),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => ReplyCase()));
                }),
            paddedDivider(),
            GestureDetector(
                child: caseBox(),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => ReplyCase()));
                }),
          ],
        )));
  }

  Widget largeBtn() {
    return GestureDetector(
        onTap: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => WriteAdmin())),
        child: Container(
            padding: EdgeInsets.all(5),
            // margin: EdgeInsets.only(left: 50),
            height: 35,
            // width: 150,
            decoration: BoxDecoration(
                //color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.white, width: 2)),
            child: Center(
                child: Text('Open new case',
                    style: TextStyle(fontSize: 12, color: Colors.white)))));
  }

  Widget firstBox() {
    return Stack(
      children: <Widget>[
        Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 70),
            height: 160,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.red[900],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                )),
            child: Center(
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.person, color: Colors.white, size: 45),
                      SizedBox(width: 8),
                      Text(
                        'Cases',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  largeBtn()
                ]))),
        Positioned(
            top: 30,
            right: 8,
            child: IconButton(
                icon: Icon(AntDesign.close, color: Colors.white),
                onPressed: () => Navigator.of(context).pop()))
      ],
    );
  }

  Widget paddedDivider() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20), child: Divider());
  }

  Widget iconBox() {
    return Container(
        width: 30,
        child: Icon(Icons.account_circle, size: 30, color: Colors.grey));
  }

  Widget adminBox() {
    return Container(
        padding: EdgeInsets.only(left: 5),
        alignment: Alignment.centerLeft,
        height: 25,
        width: 80,
        decoration: BoxDecoration(
            color: Colors.blue[900], borderRadius: BorderRadius.circular(25)),
        child: Text('Admin',
            style: TextStyle(
                fontSize: 12, color: Colors.white, fontWeight: FontWeight.w600),
            textAlign: TextAlign.left));
  }

  Widget caseBox() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              iconBox(),
              SizedBox(width: 10),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                adminBox(),
                                SizedBox(width: 8),
                                Text('12:50 PM',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w600))
                              ])),
                          SizedBox(width: 60),
                          Text('Dec 25, 2020',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600))
                        ]),
                    SizedBox(height: 5),
                    Container(
                        width: 300,
                        child: Text('I need a request treated',
                            style: TextStyle(fontWeight: FontWeight.w600)))
                  ])
            ]));
  }
}
