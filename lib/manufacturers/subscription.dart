import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:bloomzon/manufacturers/account_upgrade.dart';

class Subscription extends StatefulWidget {
  @override
  _SubscriptionState createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.grey[100],
            body: SingleChildScrollView(
                child: Column(children: <Widget>[
              Container(
                height: 270,
                child: Stack(children: <Widget>[
                  Positioned(top: 0, child: firstBox()),
                  Positioned(top: 100, right: 0, left: 0, child: accountInfo()),
                ]),
              ),
              contentBox()
            ]))));
  }

  Widget firstBox() {
    return Stack(
      children: <Widget>[
        Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 10),
            height: 150,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.blue[900],
            ),
            child: Center(
              child: Text(
                'Your Products',
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
                onPressed: () => Navigator.of(context).pop()))
      ],
    );
  }

  Widget accountInfo() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: Container(
            width: 200,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
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
              child: Text("Your account is currently live",
                  style: TextStyle(
                      color: Colors.blue[900],
                      fontWeight: FontWeight.w600,
                      fontSize: 18)),
            )));
  }

  Widget contentBox() {
    return Container(
        height: 300,
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
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
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Package',
                        style: TextStyle(
                            color: Colors.blue[900],
                            fontWeight: FontWeight.w600,
                            fontSize: 18)),
                    VerticalDivider(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text('BASIC USE',
                            style: TextStyle(
                                color: Colors.red[900],
                                fontWeight: FontWeight.w600,
                                fontSize: 18)),
                        SizedBox(height: 5),
                        GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => AccountUpgrade()));
                            },
                            child: Container(
                                height: 25,
                                width: 60,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Colors.black87),
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.grey[300]),
                                child: Center(
                                    child: Text('Upgrade',
                                        style: TextStyle(fontSize: 12)))))
                      ],
                    )
                  ]),
              Divider(),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Status',
                        style: TextStyle(
                            color: Colors.blue[900],
                            fontWeight: FontWeight.w600,
                            fontSize: 18)),
                    VerticalDivider(),
                    Text('ACTIVE',
                        style: TextStyle(
                            color: Colors.red[900],
                            fontWeight: FontWeight.w600,
                            fontSize: 18)),
                  ]),
              Divider(),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Duration',
                        style: TextStyle(
                            color: Colors.blue[900],
                            fontWeight: FontWeight.w600,
                            fontSize: 18)),
                    VerticalDivider(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text('MONTHLY',
                            style: TextStyle(
                                color: Colors.red[900],
                                fontWeight: FontWeight.w600,
                                fontSize: 18)),
                        SizedBox(height: 5),
                        Text('(You\'re on a monthly subscription',
                            style: TextStyle(
                                fontSize: 12, color: Colors.blue[900]))
                      ],
                    )
                  ]),
              Divider(),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Amount',
                        style: TextStyle(
                            color: Colors.blue[900],
                            fontWeight: FontWeight.w600,
                            fontSize: 18)),
                    VerticalDivider(),
                    Text('N12,000',
                        style: TextStyle(
                            color: Colors.red[900],
                            fontWeight: FontWeight.w600,
                            fontSize: 18)),
                  ]),
            ])));
  }
}
