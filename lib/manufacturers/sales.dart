import 'package:flutter/material.dart';

class Sales extends StatefulWidget {
  @override
  _SalesState createState() => _SalesState();
}

class _SalesState extends State<Sales> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
                child: Column(children: <Widget>[
              firstBox(),
              SizedBox(height: 20),
              itemBox('4 tanks of oil', 'Closed', '20/04/2020'),
              itemBox('Bags of water', 'Delivered', '04/09/2020'),
              itemBox('4 tanks of oil', 'Closed', '20/04/2020'),
              itemBox('4 tanks of oil', 'Awaiting payment', '20/04/2020'),
              itemBox('4 tanks of oil', 'Closed', '20/04/2020'),
            ]))));
  }

  Widget firstBox() {
    return Stack(
      children: <Widget>[
        Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 60),
            height: 120,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                )),
            child: Center(
              child: Text(
                'All Sales',
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
      ],
    );
  }

  Widget itemBox(String title, String status, String time) {
    return Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(vertical: 10),
        child: ListTile(
          leading:
              Icon(Icons.account_circle, size: 65, color: Colors.blue[900]),
          title: Text(title,
              style: TextStyle(
                  color: Colors.blue[900],
                  fontSize: 16,
                  fontWeight: FontWeight.bold)),
          subtitle: OutlineButton(
              onPressed: () {},
              child: Text('N500,000',
                  style: TextStyle(color: Colors.blue[900], fontSize: 12))),
          trailing: Column(
            children: <Widget>[
              Text(time,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w500)),
              SizedBox(height: 5),
              redBtn(status)
            ],
          ),
        ));
  }

  Widget borderBtn() {
    return Container(
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.symmetric(horizontal: 30),
        width: 60,
        height: 25,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 1, color: Colors.blue[900]),
            borderRadius: BorderRadius.circular(5)),
        child: Center(
            child: Text('N500,000',
                style: TextStyle(color: Colors.blue[900], fontSize: 12))));
  }

  Widget redBtn(String text) {
    return Container(
        height: 35,
        width: 120,
        decoration: BoxDecoration(
            color: Colors.red[900], borderRadius: BorderRadius.circular(5)),
        child: Center(
            child: Text(text,
                style: TextStyle(color: Colors.white, fontSize: 12))));
  }
}
