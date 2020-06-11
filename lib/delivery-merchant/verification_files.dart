import 'package:bloomzon/delivery-merchant/register_success.dart';
import 'package:flutter/material.dart';

class MerchantVerificationFiles extends StatefulWidget {
  @override
  _MerchantVerificationFilesState createState() =>
      _MerchantVerificationFilesState();
}

class _MerchantVerificationFilesState extends State<MerchantVerificationFiles> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Stack(children: <Widget>[
                  firstBox(),
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 120,
                    child: contentBox(),
                  ),
                  Positioned(
                      left: 10,
                      top: 10,
                      child: IconButton(
                          icon: Icon(Icons.arrow_back, color: Colors.white),
                          onPressed: () => Navigator.of(context).pop()))
                ]))));
  }

  Widget chooseFileBox() {
    return Container(
        height: 35,
        // width: 280,
        padding: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(width: 1, color: Colors.grey)),
        child: Row(children: <Widget>[
          Container(
              height: 35,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.grey[200],
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

  Widget fileRow(String topic) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
        Widget>[
      Text(topic, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      SizedBox(height: 10),
      chooseFileBox(),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text('(Doc/PDF)', style: TextStyle(color: Colors.grey, fontSize: 12))
        ],
      )
    ]);
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

  Widget firstBox() {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 130,
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 40),
        color: Colors.red[900],
        child: Center(
            child: Text(
          'Provide the required details to complete your profile',
          style: TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        )));
  }

  Widget contentBox() {
    return Container(
        height: 600,
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
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              fileRow('Bike/Vehicle Particulars'),
              fileRow('Means of ID'),
              fileRow('Academic Credentials'),
              fileRow('License'),
              buildTextEntry('Account Details', '')
            ]));
  }

  Widget otherEntry(String hintText) {
    return Container(
        padding: EdgeInsets.only(left: 5),
        height: 35,
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
                    fontSize: 14,
                  )),
              SizedBox(height: 5),
              otherEntry('Bank'),
              SizedBox(height: 5),
              otherEntry('Account No'),
              SizedBox(height: 5),
              otherEntry('Account Name'),
              SizedBox(height: 15),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => MerchantSuccess()));
                        },
                        child: saveBtn('SUBMIT'))
                  ]),
              SizedBox(height: 15),
            ]));
  }
}
