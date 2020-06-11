import 'package:bloomzon/manufacturers/register_success.dart';
import 'package:flutter/material.dart';
import 'package:bloomzon/manufacturers/manufacturers_dash.dart';

class StepThreeManufacturer extends StatefulWidget {
  @override
  _StepThreeManufacturerState createState() => _StepThreeManufacturerState();
}

class _StepThreeManufacturerState extends State<StepThreeManufacturer> {
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
        height: 70,
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 40),
        color: Colors.blue[900],
        child: Center(
            child: Text(
          'Complete this action online',
          style: TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        )));
  }

  Widget contentBox() {
    return Container(
        height: 600,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              fileRow('Company Profile'),
              fileRow('Service Offer'),
              fileRow('Available goods with prices'),
              fileRow('Terms and Conditions'),
              fileRow('Policies and Terms of Purchase'),
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ManufacturerSuccess()));
                  },
                  child: saveBtn('SUBMIT'))
            ]));
  }
}
