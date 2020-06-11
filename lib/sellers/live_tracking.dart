import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:bloomzon/sellers/delivery_status.dart';
import 'package:bloomzon/sellers/tracking.dart';
import 'package:bloomzon/sellers/wallet_transaction.dart';

class LiveTracking extends StatefulWidget {
  @override
  _LiveTrackingState createState() => _LiveTrackingState();
}

class _LiveTrackingState extends State<LiveTracking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // bottomNavigationBar: bottomNavBar(),
        backgroundColor: Color(0xFF2B2950),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          firstBox(),
          SizedBox(height: 20),
          ratingBox(),
          SizedBox(height: 20),
          scoreBox(),
          SizedBox(height: 35),
          transactionId(),
          SizedBox(height: 35),
          startBtn()
        ])));
  }

  Widget requestBox() {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                  child: Center(
                child: Text(
                  'Request Cash-out',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              )),
              SizedBox(height: 15),
              action('Amount'),
              SizedBox(height: 25),
              action('Narration'),
              SizedBox(height: 35),
              smallBtn(),
            ]));
  }

  Widget transactionId() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Transaction ID',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  )),
              SizedBox(height: 10),
              Container(
                  padding: EdgeInsets.only(left: 20),
                  width: 300,
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.white, width: 1)),
                  child: Center(
                      child: TextField(
                          decoration:
                              InputDecoration.collapsed(hintText: '')))),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: Text('Track your product',
                    style: TextStyle(fontSize: 14, color: Colors.grey[50])),
              )
            ]));
  }

  Widget startBtn() {
    return GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => Tracking()));
        },
        child: Container(
            width: 150,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.white, width: 1)),
            child: Center(
                child: Text('START',
                    style: TextStyle(
                      color: Colors.white,
                    )))));
  }

  Widget bottomNavBar() {
    return Container(
      padding: EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width,
      height: 70,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.notifications, color: Colors.grey),
              SizedBox(height: 3.0),
              Text('Home', style: TextStyle(color: Colors.grey, fontSize: 12))
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.account_circle, color: Colors.grey),
              SizedBox(height: 3.0),
              Text('Account',
                  style: TextStyle(color: Colors.grey, fontSize: 12))
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.mail, color: Colors.grey),
              SizedBox(height: 3.0),
              Text('Messages',
                  style: TextStyle(color: Colors.grey, fontSize: 12))
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.exit_to_app, color: Colors.grey),
              SizedBox(height: 3.0),
              Text('Logout', style: TextStyle(color: Colors.grey, fontSize: 12))
            ],
          )
        ],
      ),
    );
  }

  Widget scoreBox() {
    return Container(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircularPercentIndicator(
                  radius: 100.0,
                  lineWidth: 5.0,
                  backgroundColor: Color(0xFF545280),
                  percent: 0.09,
                  center: Text("9",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                  progressColor: Colors.green,
                ),
                SizedBox(height: 10),
                Text("Total Goods \n Delivered",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16)),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircularPercentIndicator(
                  radius: 100.0,
                  lineWidth: 5.0,
                  backgroundColor: Color(0xFF545280),
                  percent: 0.02,
                  center: Text("2",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                  progressColor: Colors.green,
                ),
                SizedBox(height: 10),
                Text("Total Goods \n On Transit",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16)),
              ],
            )
          ]),
    );
  }

  Widget smallBtn() {
    return GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => WalletTransaction()));
        },
        child: Container(
            // margin: EdgeInsets.only(left: 50),
            height: 40,
            width: 120,
            decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.white, width: 2)),
            child: Center(
                child: Text('SUBMIT',
                    style: TextStyle(fontSize: 12, color: Colors.white)))));
  }

  Widget action(String text) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(text,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 16)),
          SizedBox(width: 10),
          actionBar()
        ]);
  }

  Widget actionBar() {
    return Container(
      alignment: Alignment.centerRight,
      height: 35,
      width: 220,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
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
      ),
    );
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
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                  Text(
                    'Live Tracking',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                  largeBtn()
                ]))),
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

  Widget ratingBox() {
    return Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.symmetric(vertical: 10),
        height: 130,
        decoration: BoxDecoration(
            color: Color(0xFF4B496A), borderRadius: BorderRadius.circular(5)),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Hero(
                  tag: 'anim',
                  child: Icon(Icons.account_circle,
                      color: Colors.white, size: 70)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(children: <Widget>[
                    Text("Seller's ID:",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18)),
                    SizedBox(width: 8),
                    Text("Ose218",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 18))
                  ]),
                  SizedBox(height: 10),
                  Row(children: <Widget>[
                    Text("Location:",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18)),
                    SizedBox(width: 8),
                    Text("Abuja",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 18))
                  ])
                ],
              )
            ]));
  }

  Widget largeBtn() {
    return GestureDetector(
        onTap: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => DeliveryStatus())),
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
                child: Text('Delivery Status',
                    style: TextStyle(fontSize: 12, color: Colors.white)))));
  }
}
