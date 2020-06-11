import 'package:bloomzon/manufacturers/step_three.dart';
import 'package:flutter/material.dart';

class StepTwoManufacturer extends StatefulWidget {
  @override
  _StepTwoManufacturerState createState() => _StepTwoManufacturerState();
}

class _StepTwoManufacturerState extends State<StepTwoManufacturer> {
  bool _termsChecked = true;
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
        height: 130,
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 40),
        color: Colors.blue[900],
        child: Center(
            child: Text(
          'We are almost done. Kindly attach a copy',
          style: TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        )));
  }

  Widget smallBtn(String text) {
    return Container(
        margin: EdgeInsets.only(bottom: 20),
        height: 35,
        width: 70,
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
          color: Colors.red[900],
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
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
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
                  Text(termMessage,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ))
                ]),
          ),
          SizedBox(height: 20),
          CheckboxListTile(
            title: new Text(
              "I accept the Terms and Conditions",
              style: TextStyle(
                color: Color(0xff02499B),
                fontSize: 12,
              ),
            ),
            value: _termsChecked,
            selected: false,
            checkColor: Color(0xff02499B),
            activeColor: Colors.blue,
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (bool value) => setState(() => _termsChecked = value),
          ),
          SizedBox(height: 20),
          buildTextEntry('Names', ''),
          SizedBox(height: 50),
          GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => StepThreeManufacturer()));
              },
              child: saveBtn('SUBMIT'))
        ]);
  }

  Widget otherEntry(String hintText) {
    return Container(
        padding: EdgeInsets.only(left: 5),
        height: 45,
        width: 260,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 0.5, color: Colors.black87),
            borderRadius: BorderRadius.circular(5)),
        child: TextField(
            decoration: InputDecoration.collapsed(hintText: hintText)));
  }

  Widget buildTextEntry(String name, String hintText) {
    return Container(
        width: 260,
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(name,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  )),
              SizedBox(height: 5),
              otherEntry(hintText)
            ]));
  }
}
