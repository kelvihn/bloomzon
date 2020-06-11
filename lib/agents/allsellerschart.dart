import 'package:flutter/material.dart';
import 'package:bloomzon/agents/createseller.dart';

class AllSellersChartPage extends StatefulWidget {
  @override
  _AllSellersChartPageState createState() => _AllSellersChartPageState();
}

class _AllSellersChartPageState extends State<AllSellersChartPage> {
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
            child: Column(
              children: <Widget>[
                Container(
                  height: 40,
                  width: 450,
                  padding: EdgeInsets.fromLTRB(110.0, 0.0, 0.0, 0.0),
                  color: Color(0xff02499B),
                  child: Text(
                    "Your Histogram History",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                            left: 0, top: 10, right: 0, bottom: 0),
                        height: 650,
                        width: 400,
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
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      20.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'STAGE 1',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Container(
                              padding: EdgeInsets.all(5.0),
                              color: Colors.white,
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        0.0, 0.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Column(
                                          children: <Widget>[
                                            Image.asset(
                                              'images/human.png',
                                            ),
                                            ButtonTheme(
                                              height: 20,
                                              minWidth: 20,
                                              child: RaisedButton(
                                                  onPressed: () {},
                                                  color: Color(0xffBA220E),
                                                  shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                      color: Color(0xffBA220E),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(15.0),
                                                    ),
                                                  ),
                                                  child: Text(
                                                    'Paul 214',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 9,
                                                    ),
                                                  )),
                                            ),
                                            Text(
                                              'Active',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Container(
                                              width: 35,
                                              height: 4,
                                              color: Colors.green,
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Image.asset(
                                              'images/human.png',
                                            ),
                                            ButtonTheme(
                                              height: 20,
                                              minWidth: 20,
                                              child: RaisedButton(
                                                  onPressed: () {},
                                                  color: Color(0xffBA220E),
                                                  shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                      color: Color(0xffBA220E),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(15.0),
                                                    ),
                                                  ),
                                                  child: Text(
                                                    'Paul 214',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 9,
                                                    ),
                                                  )),
                                            ),
                                            Text(
                                              'Active',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Container(
                                              width: 35,
                                              height: 4,
                                              color: Colors.green,
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Image.asset(
                                              'images/human.png',
                                            ),
                                            ButtonTheme(
                                              height: 20,
                                              minWidth: 20,
                                              child: RaisedButton(
                                                  onPressed: () {},
                                                  color: Color(0xffBA220E),
                                                  shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                      color: Color(0xffBA220E),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(15.0),
                                                    ),
                                                  ),
                                                  child: Text(
                                                    'Paul 214',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 9,
                                                    ),
                                                  )),
                                            ),
                                            Text(
                                              'Active',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Container(
                                              width: 35,
                                              height: 4,
                                              color: Colors.green,
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Image.asset(
                                              'images/human.png',
                                            ),
                                            ButtonTheme(
                                              height: 20,
                                              minWidth: 20,
                                              child: RaisedButton(
                                                  onPressed: () {},
                                                  color: Color(0xffBA220E),
                                                  shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                      color: Color(0xffBA220E),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(15.0),
                                                    ),
                                                  ),
                                                  child: Text(
                                                    'Paul 214',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 9,
                                                    ),
                                                  )),
                                            ),
                                            Text(
                                              'Active',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Container(
                                              width: 35,
                                              height: 4,
                                              color: Colors.green,
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Image.asset(
                                              'images/human.png',
                                            ),
                                            ButtonTheme(
                                              height: 20,
                                              minWidth: 20,
                                              child: RaisedButton(
                                                  onPressed: () {},
                                                  color: Color(0xffBA220E),
                                                  shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                      color: Color(0xffBA220E),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(15.0),
                                                    ),
                                                  ),
                                                  child: Text(
                                                    'Paul 214',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 9,
                                                    ),
                                                  )),
                                            ),
                                            Text(
                                              'Active',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Container(
                                              width: 35,
                                              height: 4,
                                              color: Colors.green,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      20.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'STAGE 2',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Container(
                              padding: EdgeInsets.all(5.0),
                              color: Colors.white,
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        0.0, 0.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Column(
                                          children: <Widget>[
                                            Image.asset(
                                              'images/human.png',
                                            ),
                                            ButtonTheme(
                                              height: 20,
                                              minWidth: 20,
                                              child: RaisedButton(
                                                  onPressed: () {},
                                                  color: Color(0xffBA220E),
                                                  shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                      color: Color(0xffBA220E),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(15.0),
                                                    ),
                                                  ),
                                                  child: Text(
                                                    'Paul 214',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 9,
                                                    ),
                                                  )),
                                            ),
                                            Text(
                                              'Active',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Container(
                                              width: 35,
                                              height: 4,
                                              color: Colors.green,
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Image.asset(
                                              'images/human.png',
                                            ),
                                            ButtonTheme(
                                              height: 20,
                                              minWidth: 20,
                                              child: RaisedButton(
                                                  onPressed: () {},
                                                  color: Color(0xffBA220E),
                                                  shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                      color: Color(0xffBA220E),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(15.0),
                                                    ),
                                                  ),
                                                  child: Text(
                                                    'Paul 214',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 9,
                                                    ),
                                                  )),
                                            ),
                                            Text(
                                              'Active',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Container(
                                              width: 35,
                                              height: 4,
                                              color: Colors.green,
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Image.asset(
                                              'images/human.png',
                                            ),
                                            ButtonTheme(
                                              height: 20,
                                              minWidth: 35,
                                              child: RaisedButton(
                                                  onPressed: () {},
                                                  color: Color(0xffBA220E),
                                                  shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                      color: Color(0xffBA220E),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(15.0),
                                                    ),
                                                  ),
                                                  child: Text(
                                                    '',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 9,
                                                    ),
                                                  )),
                                            ),
                                            Text(
                                              '',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Container(
                                              width: 35,
                                              height: 4,
                                              color: Colors.grey,
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Image.asset(
                                              'images/human.png',
                                            ),
                                            ButtonTheme(
                                              height: 20,
                                              minWidth: 35,
                                              child: RaisedButton(
                                                  onPressed: () {},
                                                  color: Color(0xffBA220E),
                                                  shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                      color: Color(0xffBA220E),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(15.0),
                                                    ),
                                                  ),
                                                  child: Text(
                                                    '',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 9,
                                                    ),
                                                  )),
                                            ),
                                            Text(
                                              '',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Container(
                                              width: 35,
                                              height: 4,
                                              color: Colors.grey,
                                            ),
                                          ],
                                        ),
                                        ButtonTheme(
                                          height: 60,
                                          minWidth: 40,
                                          child: RaisedButton(
                                              onPressed: () {
                                                Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                        builder: (_) =>
                                                            CreateSellerPage()));
                                              },
                                              color: Color(0xff02499B),
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                  color: Color(0xff02499B),
                                                ),
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(15.0),
                                                ),
                                              ),
                                              child: Column(
                                                children: <Widget>[
                                                  Text(
                                                    'Add',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                  Text(
                                                    'Seller',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ],
                                              )),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      20.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'STAGE 3',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Container(
                              padding: EdgeInsets.all(5.0),
                              color: Colors.white,
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        0.0, 0.0, 0.0, 0.0),
                                    child: Row(
                                      children: <Widget>[
                                        Column(
                                          children: <Widget>[
                                            Image.asset(
                                              'images/human.png',
                                            ),
                                            ButtonTheme(
                                              height: 20,
                                              minWidth: 20,
                                              child: RaisedButton(
                                                  onPressed: () {},
                                                  color: Color(0xffBA220E),
                                                  shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                      color: Color(0xffBA220E),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(15.0),
                                                    ),
                                                  ),
                                                  child: Text(
                                                    '',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 9,
                                                    ),
                                                  )),
                                            ),
                                            Container(
                                              width: 35,
                                              height: 4,
                                              color: Colors.red,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Column(
                                          children: <Widget>[
                                            ButtonTheme(
                                              height: 60,
                                              minWidth: 40,
                                              child: RaisedButton(
                                                  onPressed: () {},
                                                  color: Color(0xff02499B),
                                                  shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                      color: Color(0xff02499B),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(15.0),
                                                    ),
                                                  ),
                                                  child: Column(
                                                    children: <Widget>[
                                                      Text(
                                                        'Add',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                      Text(
                                                        'Seller',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                    ],
                                                  )),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              '(Needs 20 sellers to',
                                              style: TextStyle(
                                                  color: Color(0xff02499B),
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              'complete this stage)',
                                              style: TextStyle(
                                                  color: Color(0xff02499B),
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
