import 'package:flutter/material.dart';

class TotalTripPage extends StatefulWidget {
  @override
  _TotalTripPageState createState() => _TotalTripPageState();
}

class _TotalTripPageState extends State<TotalTripPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xffAF2E1D),
        elevation: 0.0,
        title: Text(
          "Total Trip",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: Color(0xffF2F2F2),
      body: SingleChildScrollView(
        child: Container(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 5.0),
                      padding: EdgeInsets.all(5.0),
                      height: 140,
                      width: 330,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Image.asset('images/trip1.png'),
                              ],
                            ),
                          ),
                          Container(
                            height: 110,
                            color: Colors.grey,
                            width: 1,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(10.0, 40.0, 0.0, 0.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'Location:',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Color(0xff02499B),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '1 Kidney Street',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Color(0xff02499B),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'Amount:',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Color(0xff02499B),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'N200',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Color(0xff02499B),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'Status:',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Color(0xff02499B),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Closed',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 14,
                                      ),
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
                      height: 10,
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 5.0),
                      padding: EdgeInsets.all(5.0),
                      height: 140,
                      width: 330,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Image.asset('images/trip2.png'),
                              ],
                            ),
                          ),
                          Container(
                            height: 110,
                            color: Colors.grey,
                            width: 1,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(10.0, 40.0, 0.0, 0.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'Location:',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Color(0xff02499B),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '1 Kidney Street',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Color(0xff02499B),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'Amount:',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Color(0xff02499B),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'N200',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Color(0xff02499B),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'Status:',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Color(0xff02499B),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Closed',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 14,
                                      ),
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
                      height: 10,
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 5.0),
                      padding: EdgeInsets.all(5.0),
                      height: 140,
                      width: 330,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Image.asset(
                                  'images/trip3.png',
                                  width: 105,
                                  height: 100,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 110,
                            color: Colors.grey,
                            width: 1,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(10.0, 40.0, 0.0, 0.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'Location:',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Color(0xff02499B),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '1 Kidney Street',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Color(0xff02499B),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'Amount:',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Color(0xff02499B),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'N200',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Color(0xff02499B),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'Status:',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Color(0xff02499B),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Closed',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 14,
                                      ),
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
                      height: 10,
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 5.0),
                      padding: EdgeInsets.all(5.0),
                      height: 140,
                      width: 330,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Image.asset('images/trip4.png'),
                              ],
                            ),
                          ),
                          Container(
                            height: 110,
                            color: Colors.grey,
                            width: 1,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(10.0, 40.0, 0.0, 0.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'Location:',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Color(0xff02499B),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '1 Kidney Street',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Color(0xff02499B),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'Amount:',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Color(0xff02499B),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'N200',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Color(0xff02499B),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'Status:',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Color(0xff02499B),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Closed',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 14,
                                      ),
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
                      height: 10,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
