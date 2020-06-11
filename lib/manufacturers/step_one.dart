import 'package:bloomzon/manufacturers/step_two.dart';
import 'package:flutter/material.dart';

class StepOneManufacturer extends StatefulWidget {
  @override
  _StepOneManufacturerState createState() => _StepOneManufacturerState();
}

class _StepOneManufacturerState extends State<StepOneManufacturer> {
  String termMessage =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
                child: Column(children: <Widget>[
      firstBox(),
      contentBox(),
    ]))));
  }

  Widget firstBox() {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 150,
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 40),
        color: Colors.blue[900],
        child: Center(
            child: Text(
          'To successfully complete your account, kindly review our Terms and Conditions',
          style: TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        )));
  }

  Widget smallBtn(String text) {
    return Container(
        margin: EdgeInsets.only(bottom: 20),
        height: 30,
        width: 120,
        decoration: BoxDecoration(
          color: Colors.red[900],
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
            child: Text(text,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 12))));
  }

  Widget saveBtn(String text) {
    return Container(
        margin: EdgeInsets.only(bottom: 20),
        height: 50,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.blue[900],
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
            child: Text(text,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 16))));
  }

  Widget contentBox() {
    return Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 40),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 5.0, // soften the shadow
                    spreadRadius: 0.5, //extend the shadow
                    offset: Offset(
                      0.0, // Move to right 10  horizontally
                      0.0, // Move to bottom 10 Vertically
                    ),
                  )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  children: <Widget>[
                    Text('Terms and Conditions',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.blue[900])),
                    SizedBox(height: 20),
                    Text(
                      termMessage,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    )
                  ]),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[smallBtn('PRINT'), smallBtn('FILL ONLINE')],
              ),
            ),
            SizedBox(height: 60),
            GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => StepTwoManufacturer()));
                },
                child: saveBtn('SUBMIT')),
            SizedBox(height: 30),
          ],
        ));
  }
}
