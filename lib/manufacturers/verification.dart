import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:bloomzon/manufacturers/manufacturers_pageview.dart';

class Verification extends StatefulWidget {
  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/success_bg.jpg'), fit: BoxFit.cover)),
      ),
      Container(
          padding: EdgeInsets.symmetric(horizontal: 50),
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
                Colors.red[900].withOpacity(.7),
                Colors.red[900].withOpacity(.7),
                Colors.red[900].withOpacity(.7),
                Colors.red[900].withOpacity(.7),
              ])),
          child: Center(child: baseContainer())),
    ]));
  }

  Widget checkCircle() {
    return Container(
        child: Icon(AntDesign.checkcircleo, size: 165, color: Colors.white));
  }

  Widget smallBtn(String text) {
    return GestureDetector(
        onTap: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => PageViewScreen())),
        child: Container(
            // margin: EdgeInsets.only(left: 50),
            height: 35,
            width: 100,
            decoration: BoxDecoration(
                //color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.white, width: 2)),
            child: Center(
                child: Text(text,
                    style: TextStyle(fontSize: 12, color: Colors.white)))));
  }

  Widget baseContainer() {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Verification',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                  color: Colors.white)),
          SizedBox(height: 40),
          checkCircle(),
          SizedBox(height: 40),
          Text(
            'Successfully filled.\n We will review and revert',
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 70),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[smallBtn('Dashboard'), smallBtn('Home')])
        ]);
  }
}
