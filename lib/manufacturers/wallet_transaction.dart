import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class WalletTransaction extends StatefulWidget {
  @override
  _WalletTransactionState createState() => _WalletTransactionState();
}

class _WalletTransactionState extends State<WalletTransaction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[50],
        body: Stack(children: <Widget>[
          Positioned(top: 0, child: firstBox()),
          Positioned(bottom: 0, child: contentContainer()),
          Positioned(top: 150, left: 0, right: 0, child: accountInfo()),
        ]));
  }

  Widget contentContainer() {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.75,
        decoration: BoxDecoration(
            color: Color(0xFF2B2950),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        child: ListView(children: <Widget>[
          SizedBox(height: 50),
          historyBox(),
          historyBox(),
          historyBox(),
          historyBox(),
          historyBox(),
          historyBox(),
        ]));
  }

  Widget accountInfo() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Container(
            width: 220,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10.0, // soften the shadow
                  spreadRadius: 2.0, //extend the shadow
                  offset: Offset(
                    0.0, // Move to right 10  horizontally
                    0.0, // Move to bottom 10 Vertically
                  ),
                )
              ],
            ),
            child: Center(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.account_circle,
                        size: 75, color: Color(0xFF2B2950)),
                    SizedBox(width: 25),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(children: <Widget>[
                          Text("NAME:",
                              style: TextStyle(
                                  color: Color(0xFF2B2950),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18)),
                          Text("Matthew",
                              style: TextStyle(
                                  color: Color(0xFF2B2950),
                                  fontWeight: FontWeight.w300,
                                  fontSize: 18))
                        ]),
                        SizedBox(height: 10),
                        Row(children: <Widget>[
                          Text("BALANCE:",
                              style: TextStyle(
                                  color: Color(0xFF2B2950),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18)),
                          Text("N60,000",
                              style: TextStyle(
                                  color: Color(0xFF2B2950),
                                  fontWeight: FontWeight.w300,
                                  fontSize: 18))
                        ])
                      ],
                    )
                  ]),
            )));
  }

  Widget historyBox() {
    return Container(
        height: 120,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        padding: EdgeInsets.only(left: 10),
        width: MediaQuery.of(context).size.width * 0.70,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(width: 2, color: Colors.white)),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text('Credit',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                    Text('Bag, Shoe & Clothe',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600))
                  ]),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text('N20,000',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                    Text('Ose214',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold))
                  ]),
              Container(
                  padding: EdgeInsets.all(5),
                  height: 120,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Colors.indigo[100],
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text('10th March, 2020',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600)),
                  ))
            ]));
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
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                )),
            child: Center(
              child: Text(
                'Wallet Transaction History',
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
}
