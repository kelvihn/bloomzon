import 'package:bloomzon/groceries/bottom-nav.dart';
import 'package:bloomzon/groceries/orders-details.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xff02499B),
        elevation: 0.0,
      ),
      backgroundColor: Color(0xffF2F2F2),
      body: SingleChildScrollView(
        child: Container(
          child: SafeArea(
            child: Stack(
              children: <Widget>[
                Container(
                  height: 300,
                  width: 450,
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                      child: Image.asset(
                        'images/user_sub2.png',
                        fit: BoxFit.fill,
                      )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              "All Orders",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 0, top: 20, right: 0, bottom: 0),
                          height: 600,
                          width: 300,
                          padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
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
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              OrderDetailPage()),
                                    );
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(5.0),
                                    height: 125,
                                    width: 300,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(5),
                                          topRight: Radius.circular(5),
                                          bottomLeft: Radius.circular(5),
                                          bottomRight: Radius.circular(5)),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10.0, 20.0, 0.0, 0.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                'Order14392',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 11,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                'N24,000',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 11,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                'Egusi Soup',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 11,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Column(
                                          children: <Widget>[
                                            ButtonTheme(
                                              height: 20,
                                              minWidth: 20,
                                              child: RaisedButton(
                                                color: Color(0xffAF2E1D),
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                    style: BorderStyle.solid,
                                                    color: Colors.white,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(50.0),
                                                  ),
                                                ),
                                                child: Text(
                                                  "New",
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                  ),
                                                ),
                                                textColor: Colors.white,
                                                highlightElevation: 8.0,
                                                splashColor: Colors.white,
                                                elevation: 2.0,
                                                onPressed: () {},
                                              ),
                                            ),
                                            Text(
                                              '09/04/2020',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            ButtonTheme(
                                              height: 20,
                                              minWidth: 20,
                                              child: RaisedButton(
                                                color: Color(0xffD1D1D1),
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                    style: BorderStyle.solid,
                                                    color: Colors.white,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(50.0),
                                                  ),
                                                ),
                                                child: Text(
                                                  "Details",
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                textColor: Colors.white,
                                                highlightElevation: 8.0,
                                                splashColor: Colors.white,
                                                elevation: 2.0,
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            OrderDetailPage()),
                                                  );
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              OrderDetailPage()),
                                    );
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(5.0),
                                    height: 125,
                                    width: 300,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(5),
                                          topRight: Radius.circular(5),
                                          bottomLeft: Radius.circular(5),
                                          bottomRight: Radius.circular(5)),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10.0, 20.0, 0.0, 0.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                'Order14392',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 11,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                'N24,000',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 11,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                'Egusi Soup',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 11,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Column(
                                          children: <Widget>[
                                            ButtonTheme(
                                              height: 20,
                                              minWidth: 20,
                                              child: RaisedButton(
                                                color: Color(0xffAF2E1D),
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                    style: BorderStyle.solid,
                                                    color: Colors.white,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(50.0),
                                                  ),
                                                ),
                                                child: Text(
                                                  "New",
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                  ),
                                                ),
                                                textColor: Colors.white,
                                                highlightElevation: 8.0,
                                                splashColor: Colors.white,
                                                elevation: 2.0,
                                                onPressed: () {},
                                              ),
                                            ),
                                            Text(
                                              '09/04/2020',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            ButtonTheme(
                                              height: 20,
                                              minWidth: 20,
                                              child: RaisedButton(
                                                color: Color(0xffD1D1D1),
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                    style: BorderStyle.solid,
                                                    color: Colors.white,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(50.0),
                                                  ),
                                                ),
                                                child: Text(
                                                  "Details",
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                textColor: Colors.white,
                                                highlightElevation: 8.0,
                                                splashColor: Colors.white,
                                                elevation: 2.0,
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            OrderDetailPage()),
                                                  );
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              OrderDetailPage()),
                                    );
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(5.0),
                                    height: 125,
                                    width: 300,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(5),
                                          topRight: Radius.circular(5),
                                          bottomLeft: Radius.circular(5),
                                          bottomRight: Radius.circular(5)),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10.0, 20.0, 0.0, 0.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                'Order14392',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 11,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                'N24,000',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 11,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                'Egusi Soup',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 11,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Column(
                                          children: <Widget>[
                                            ButtonTheme(
                                              height: 20,
                                              minWidth: 20,
                                              child: RaisedButton(
                                                color: Color(0xffAF2E1D),
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                    style: BorderStyle.solid,
                                                    color: Colors.white,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(50.0),
                                                  ),
                                                ),
                                                child: Text(
                                                  "New",
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                  ),
                                                ),
                                                textColor: Colors.white,
                                                highlightElevation: 8.0,
                                                splashColor: Colors.white,
                                                elevation: 2.0,
                                                onPressed: () {},
                                              ),
                                            ),
                                            Text(
                                              '09/04/2020',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            ButtonTheme(
                                              height: 20,
                                              minWidth: 20,
                                              child: RaisedButton(
                                                color: Color(0xffD1D1D1),
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                    style: BorderStyle.solid,
                                                    color: Colors.white,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(50.0),
                                                  ),
                                                ),
                                                child: Text(
                                                  "Details",
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                textColor: Colors.white,
                                                highlightElevation: 8.0,
                                                splashColor: Colors.white,
                                                elevation: 2.0,
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            OrderDetailPage()),
                                                  );
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              OrderDetailPage()),
                                    );
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(5.0),
                                    height: 125,
                                    width: 300,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(5),
                                          topRight: Radius.circular(5),
                                          bottomLeft: Radius.circular(5),
                                          bottomRight: Radius.circular(5)),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10.0, 20.0, 0.0, 0.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                'Order14392',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 11,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                'N24,000',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 11,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                'Egusi Soup',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 11,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Column(
                                          children: <Widget>[
                                            ButtonTheme(
                                              height: 20,
                                              minWidth: 20,
                                              child: RaisedButton(
                                                color: Color(0xffAF2E1D),
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                    style: BorderStyle.solid,
                                                    color: Colors.white,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(50.0),
                                                  ),
                                                ),
                                                child: Text(
                                                  "New",
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                  ),
                                                ),
                                                textColor: Colors.white,
                                                highlightElevation: 8.0,
                                                splashColor: Colors.white,
                                                elevation: 2.0,
                                                onPressed: () {},
                                              ),
                                            ),
                                            Text(
                                              '09/04/2020',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            ButtonTheme(
                                              height: 20,
                                              minWidth: 20,
                                              child: RaisedButton(
                                                color: Color(0xffD1D1D1),
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                    style: BorderStyle.solid,
                                                    color: Colors.white,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(50.0),
                                                  ),
                                                ),
                                                child: Text(
                                                  "Details",
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                textColor: Colors.white,
                                                highlightElevation: 8.0,
                                                splashColor: Colors.white,
                                                elevation: 2.0,
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            OrderDetailPage()),
                                                  );
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              OrderDetailPage()),
                                    );
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(5.0),
                                    height: 125,
                                    width: 300,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(5),
                                          topRight: Radius.circular(5),
                                          bottomLeft: Radius.circular(5),
                                          bottomRight: Radius.circular(5)),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10.0, 20.0, 0.0, 0.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                'Order14392',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 11,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                'N24,000',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 11,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                'Egusi Soup',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 11,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Column(
                                          children: <Widget>[
                                            ButtonTheme(
                                              height: 20,
                                              minWidth: 20,
                                              child: RaisedButton(
                                                color: Color(0xffAF2E1D),
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                    style: BorderStyle.solid,
                                                    color: Colors.white,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(50.0),
                                                  ),
                                                ),
                                                child: Text(
                                                  "New",
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                  ),
                                                ),
                                                textColor: Colors.white,
                                                highlightElevation: 8.0,
                                                splashColor: Colors.white,
                                                elevation: 2.0,
                                                onPressed: () {},
                                              ),
                                            ),
                                            Text(
                                              '09/04/2020',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            ButtonTheme(
                                              height: 20,
                                              minWidth: 20,
                                              child: RaisedButton(
                                                color: Color(0xffD1D1D1),
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                    style: BorderStyle.solid,
                                                    color: Colors.white,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(50.0),
                                                  ),
                                                ),
                                                child: Text(
                                                  "Details",
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                textColor: Colors.white,
                                                highlightElevation: 8.0,
                                                splashColor: Colors.white,
                                                elevation: 2.0,
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            OrderDetailPage()),
                                                  );
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
