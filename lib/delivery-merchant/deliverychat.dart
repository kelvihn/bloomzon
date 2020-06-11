import 'package:bloomzon/delivery-merchant/Details.dart';
import 'package:flutter/material.dart';

class DeliveryChatPage extends StatefulWidget {
  @override
  _DeliveryChatPageState createState() => _DeliveryChatPageState();
}

class _DeliveryChatPageState extends State<DeliveryChatPage> {
  String currency;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Delivery Chat",
          style: TextStyle(
            fontSize: 20,
            color: Color(0xff02499B),
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: IconThemeData(color: Color(0xff02499B)),
      ),
      backgroundColor: Color(0xffF2F2F2),
      body: SingleChildScrollView(
        child: Container(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 85,
                      width: 190,
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(25.0, 16.0, 30.0, 16.0),
                        child: DropdownButtonHideUnderline(
                          child: new DropdownButtonFormField<String>(
                            iconEnabledColor: Colors.white,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                const Radius.circular(5.0),
                              )),
                              hintText: 'Sort',
                              hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                              ),
                              filled: true,
                              fillColor: Color(0xff02499B),
                              labelStyle: TextStyle(
                                color: Colors.white,
                              ),
                              focusColor: Color(0xff02499B),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(5.0),
                                  ),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  )),
                            ),
                            value: currency,
                            validator: (String newValue) {
                              if (newValue == null) {
                                return 'Please enter currency';
                              }
                              return null;
                            },
                            hint: Text(
                              '',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            onChanged: (String newValue) {
                              setState(() {
                                currency = newValue;
                              });
                            },
                            items: <String>[
                              'New',
                              'Old',
                              'Closed',
                            ].map<DropdownMenuItem<String>>((String value) {
                              return new DropdownMenuItem<String>(
                                value: value,
                                child: new Text(
                                  value,
                                  style: TextStyle(
                                    color: Color(0xff02499B),
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
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
                                const EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 0.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    ButtonTheme(
                                      height: 29,
                                      minWidth: 40,
                                      child: RaisedButton(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            style: BorderStyle.solid,
                                            color: Color(0xff02499B),
                                          ),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10.0),
                                          ),
                                        ),
                                        child: Text(
                                          "View Details",
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Color(0xff02499B),
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
                                                    DetailsPage()),
                                          );
                                        },
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    ButtonTheme(
                                      height: 29,
                                      minWidth: 30,
                                      child: RaisedButton(
                                        color: Color(0xff008629),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            style: BorderStyle.solid,
                                            color: Color(0xff008629),
                                          ),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10.0),
                                          ),
                                        ),
                                        child: Text(
                                          "New Request",
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
                                  ],
                                ),
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
                                    ButtonTheme(
                                      height: 29,
                                      minWidth: 40,
                                      child: RaisedButton(
                                        color: Color(0xff02499B),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            style: BorderStyle.solid,
                                            color: Color(0xff02499B),
                                          ),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10.0),
                                          ),
                                        ),
                                        child: Text(
                                          "Accept",
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
                                    SizedBox(
                                      width: 20,
                                    ),
                                    ButtonTheme(
                                      height: 29,
                                      minWidth: 40,
                                      child: RaisedButton(
                                        color: Color(0xffAF2E1D),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            style: BorderStyle.solid,
                                            color: Color(0xffAF2E1D),
                                          ),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10.0),
                                          ),
                                        ),
                                        child: Text(
                                          "Reject",
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
                                Image.asset(
                                  'images/trip2.png',
                                  height: 80,
                                  width: 90,
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
                                const EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 0.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    ButtonTheme(
                                      height: 29,
                                      minWidth: 40,
                                      child: RaisedButton(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            style: BorderStyle.solid,
                                            color: Color(0xff02499B),
                                          ),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10.0),
                                          ),
                                        ),
                                        child: Text(
                                          "View Details",
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Color(0xff02499B),
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
                                                    DetailsPage()),
                                          );
                                        },
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    ButtonTheme(
                                      height: 29,
                                      minWidth: 30,
                                      child: RaisedButton(
                                        color: Color(0xff008629),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            style: BorderStyle.solid,
                                            color: Color(0xff008629),
                                          ),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10.0),
                                          ),
                                        ),
                                        child: Text(
                                          "New Request",
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
                                  ],
                                ),
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
                                    ButtonTheme(
                                      height: 29,
                                      minWidth: 40,
                                      child: RaisedButton(
                                        color: Color(0xff02499B),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            style: BorderStyle.solid,
                                            color: Color(0xff02499B),
                                          ),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10.0),
                                          ),
                                        ),
                                        child: Text(
                                          "Accept",
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
                                    SizedBox(
                                      width: 20,
                                    ),
                                    ButtonTheme(
                                      height: 29,
                                      minWidth: 40,
                                      child: RaisedButton(
                                        color: Color(0xffAF2E1D),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            style: BorderStyle.solid,
                                            color: Color(0xffAF2E1D),
                                          ),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10.0),
                                          ),
                                        ),
                                        child: Text(
                                          "Reject",
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
                                Image.asset(
                                  'images/trip3.png',
                                  height: 80,
                                  width: 90,
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
                                const EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 0.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    ButtonTheme(
                                      height: 29,
                                      minWidth: 40,
                                      child: RaisedButton(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            style: BorderStyle.solid,
                                            color: Color(0xff02499B),
                                          ),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10.0),
                                          ),
                                        ),
                                        child: Text(
                                          "View Details",
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Color(0xff02499B),
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
                                                    DetailsPage()),
                                          );
                                        },
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    ButtonTheme(
                                      height: 29,
                                      minWidth: 30,
                                      child: RaisedButton(
                                        color: Color(0xff008629),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            style: BorderStyle.solid,
                                            color: Color(0xff008629),
                                          ),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10.0),
                                          ),
                                        ),
                                        child: Text(
                                          "New Request",
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
                                  ],
                                ),
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
                                    ButtonTheme(
                                      height: 29,
                                      minWidth: 40,
                                      child: RaisedButton(
                                        color: Color(0xff02499B),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            style: BorderStyle.solid,
                                            color: Color(0xff02499B),
                                          ),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10.0),
                                          ),
                                        ),
                                        child: Text(
                                          "Accept",
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
                                    SizedBox(
                                      width: 20,
                                    ),
                                    ButtonTheme(
                                      height: 29,
                                      minWidth: 40,
                                      child: RaisedButton(
                                        color: Color(0xffAF2E1D),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            style: BorderStyle.solid,
                                            color: Color(0xffAF2E1D),
                                          ),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10.0),
                                          ),
                                        ),
                                        child: Text(
                                          "Reject",
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
