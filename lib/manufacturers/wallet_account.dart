import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:bloomzon/manufacturers/wallet_transaction.dart';

class WalletAccount extends StatefulWidget {
  @override
  _WalletAccountState createState() => _WalletAccountState();
}

class _WalletAccountState extends State<WalletAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF2B2950),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          firstBox(),
          SizedBox(height: 20),
          ratingBox(),
          requestBox()
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
              smallBtn()
            ]));
  }

  Widget smallBtn() {
    return Container(
        // margin: EdgeInsets.only(left: 50),
        height: 40,
        width: 120,
        decoration: BoxDecoration(
            color: Colors.blue[900],
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.white, width: 2)),
        child: Center(
            child: Text('SUBMIT',
                style: TextStyle(fontSize: 12, color: Colors.white))));
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
              child: Text(
                'Your Wallet Account',
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

  Widget ratingBox() {
    return Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.symmetric(vertical: 10),
        height: 350,
        decoration: BoxDecoration(
            color: Color(0xFF4B496A), borderRadius: BorderRadius.circular(5)),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        CircularPercentIndicator(
                          radius: 100.0,
                          lineWidth: 5.0,
                          backgroundColor: Colors.orange,
                          percent: 0.5,
                          center: Text("50",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          progressColor: Colors.green,
                        ),
                        SizedBox(height: 10),
                        Text("Total Orders",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 16)),
                      ],
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => WalletTransaction()));
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            CircularPercentIndicator(
                              radius: 100.0,
                              lineWidth: 5.0,
                              backgroundColor: Colors.green,
                              percent: 0.5,
                              center: Text("N60,000",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18)),
                              progressColor: Colors.green,
                            ),
                            SizedBox(height: 10),
                            Text("Available Cash",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16)),
                          ],
                        ))
                  ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        CircularPercentIndicator(
                          radius: 100.0,
                          lineWidth: 5.0,
                          backgroundColor: Colors.orange,
                          percent: 1.0,
                          center: Text("N54,000",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          progressColor: Colors.green,
                        ),
                        SizedBox(height: 10),
                        Text("Cleared Balance",
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
                          backgroundColor: Colors.orange,
                          percent: 0.4,
                          center: Text("40",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          progressColor: Colors.green,
                        ),
                        SizedBox(height: 10),
                        Text("Total Sales",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 16)),
                      ],
                    )
                  ])
            ]));
  }
}
