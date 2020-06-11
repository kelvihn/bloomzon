import 'package:bloomzon/shopper/bottom-nav.dart';
import 'package:bloomzon/shopper/messages.dart';
import 'package:bloomzon/shopper/package-history.dart';
import 'package:bloomzon/shopper/store-in.dart';
import 'package:flutter/material.dart';

class ShopperDashboardPage extends StatefulWidget {
  @override
  _ShopperDashboardPageState createState() => _ShopperDashboardPageState();
}

class _ShopperDashboardPageState extends State<ShopperDashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new PreferredSize(
          child: AppBar(
            iconTheme: new IconThemeData(color: Colors.white),
            backgroundColor: Color(0xff02499B),
            flexibleSpace: PreferredSize(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 100,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Shopper ID:',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Last Login:',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Location:',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Ose',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    '20:00pm',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    'Niger',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                preferredSize: Size(400.0, 400.0)),
          ),
          preferredSize: Size.fromHeight(170.0)),
      backgroundColor: Color(0xff02499B),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 0, top: 20, right: 0, bottom: 0),
            width: 450,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Image.asset('images/order_request.png'),
                          SizedBox(
                            height: 10,
                          ),
                          ButtonTheme(
                            height: 39,
                            minWidth: 60,
                            child: RaisedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            PackageHistoryPage()),
                                  );
                                },
                                color: Color(0xff02499B),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    color: Color(0xff02499B),
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(40.0),
                                  ),
                                ),
                                child: Text(
                                  'Order Request',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Image.asset('images/store_product.png'),
                          SizedBox(
                            height: 10,
                          ),
                          ButtonTheme(
                            height: 39,
                            minWidth: 60,
                            child: RaisedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => StoreInPage()),
                                  );
                                },
                                color: Color(0xff02499B),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    color: Color(0xff02499B),
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(40.0),
                                  ),
                                ),
                                child: Text(
                                  'Store Product',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Image.asset('images/message.png'),
                          SizedBox(
                            height: 10,
                          ),
                          ButtonTheme(
                            height: 39,
                            minWidth: 60,
                            child: RaisedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MessagesPage()),
                                  );
                                },
                                color: Color(0xff02499B),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    color: Color(0xff02499B),
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(40.0),
                                  ),
                                ),
                                child: Text(
                                  'Messages',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ButtonTheme(
                        height: 49,
                        minWidth: 200,
                        child: RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PackageHistoryPage()),
                              );
                            },
                            color: Color(0xffAF2E1D),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: Color(0xffAF2E1D),
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(40.0),
                              ),
                            ),
                            child: Text(
                              'View All Packages',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
