import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class UpgradingAccount extends StatefulWidget {
  @override
  _UpgradingAccountState createState() => _UpgradingAccountState();
}

class _UpgradingAccountState extends State<UpgradingAccount> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            // resizeToAvoidBottomPadding: false,
            body: Stack(children: <Widget>[
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/bg.jpg'), fit: BoxFit.cover)),
      ),
      SingleChildScrollView(
          child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [
                    0.1,
                    0.4,
                    0.7,
                    0.9
                  ],
                      colors: [
                    Colors.white.withOpacity(.9),
                    Colors.white.withOpacity(.9),
                    Colors.white.withOpacity(.9),
                    Colors.white.withOpacity(.9),
                  ])),
              child: Column(
                children: <Widget>[
                  firstBox(),
                  SizedBox(height: 20),
                  infoText(),
                  SizedBox(height: 20),
                  ratingBox()
                ],
              )))
    ])));
  }

  Widget firstBox() {
    return Stack(
      children: <Widget>[
        Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 60),
            height: 120,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.red[900],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                )),
            child: Center(
              child: Text(
                'Upgrading Account',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
                textAlign: TextAlign.center,
              ),
            )),
        Positioned(
            top: 30,
            left: 8,
            child: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.of(context).pop())),
        Positioned(
            top: 30,
            right: 8,
            child: IconButton(
                icon: Icon(AntDesign.close, color: Colors.white),
                onPressed: () => Navigator.of(context).pop()))
      ],
    );
  }

  Widget infoText() {
    return Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        height: 70,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 5.0, // soften the shadow
            spreadRadius: 0.5, //extend the shadow
            offset: Offset(
              0.0, // Move to right 10  horizontally
              0.0, // Move to bottom 10 Vertically
            ),
          )
        ], color: Colors.white, borderRadius: BorderRadius.circular(5)),
        child: Center(
            child: Text('You are about to upgrade to become a manufacturer',
                style: TextStyle(
                    color: Colors.red[900], fontWeight: FontWeight.w600),
                textAlign: TextAlign.center)));
  }

  Widget ratingBox() {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      height: MediaQuery.of(context).size.height * 0.60,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 5.0, // soften the shadow
          spreadRadius: 0.5, //extend the shadow
          offset: Offset(
            0.0, // Move to right 10  horizontally
            0.0, // Move to bottom 10 Vertically
          ),
        )
      ], color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: Center(
          child: Column(children: <Widget>[
        SizedBox(height: 20),
        chooseFileBox(),
        SizedBox(height: 5),
        Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
          Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('(Already have a form)',
                    style: TextStyle(color: Colors.grey, fontSize: 12)),
                SizedBox(height: 5),
                tinyBtn()
              ])
        ]),
        SizedBox(height: 20),
        textBox(),
        SizedBox(height: 20),
        smallBtn()
      ])),
    );
  }

  Widget textBox() {
    return Container(
        height: 200,
        width: 280,
        padding: EdgeInsets.only(top: 10, left: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(width: 1, color: Colors.grey)),
        child: TextField(
            decoration:
                InputDecoration.collapsed(hintText: 'Type your message...')));
  }

  Widget tinyBtn() {
    return GestureDetector(
        onTap: () {},
        child: Container(
            // margin: EdgeInsets.only(left: 50),
            height: 25,
            width: 70,
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.white, width: 2)),
            child: Center(
                child: Text('Print File',
                    style: TextStyle(fontSize: 12, color: Colors.black87)))));
  }

  Widget chooseFileBox() {
    return Container(
        height: 40,
        width: 280,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(width: 1, color: Colors.grey)),
        child: Row(children: <Widget>[
          Container(
              height: 40,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                  child: Text('Choose File',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w600)))),
          SizedBox(width: 20),
          Text('No file chosen',
              style: TextStyle(
                color: Colors.grey,
              ))
        ]));
  }

  Widget smallBtn() {
    return GestureDetector(
        onTap: () {},
        child: Container(
            // margin: EdgeInsets.only(left: 50),
            height: 40,
            width: 150,
            decoration: BoxDecoration(
                color: Colors.red[900],
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.white, width: 2)),
            child: Center(
                child: Text('UPGRADE',
                    style: TextStyle(fontSize: 12, color: Colors.white)))));
  }
}
