import 'package:bloomzon/agents/verify-success.dart';
import 'package:flutter/material.dart';

class VerifyPage extends StatefulWidget {
  @override
  _VerifyPageState createState() => _VerifyPageState();
}

class _VerifyPageState extends State<VerifyPage> {
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
                  height: 150,
                  width: 450,
                  padding: EdgeInsets.fromLTRB(110.0, 0.0, 0.0, 0.0),
                  color: Color(0xff02499B),
                  child: Text(
                    "Veify Your Account",
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
                            left: 0, top: 40, right: 0, bottom: 0),
                        height: 530,
                        width: 370,
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
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  40.0, 0.0, 0.0, 0.0),
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'Proof of Address',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        ButtonTheme(
                                          height: 30,
                                          minWidth: 30,
                                          child: RaisedButton(
                                            onPressed: () {},
                                            color: Color(0xffB4B4B4),
                                            shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                  color: Color(0xff535057),
                                                ),
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0.0),
                                                  topLeft: Radius.circular(0.0),
                                                  bottomRight:
                                                      Radius.circular(0.0),
                                                  topRight:
                                                      Radius.circular(0.0),
                                                )),
                                            child: Text(
                                              'Choose file',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 30,
                                          width: 200,
                                          margin: EdgeInsets.fromLTRB(
                                              0.0, 0.0, 5.0, 0.0),
                                          child: TextFormField(
                                            maxLines: 3,
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              filled: true,
                                              fillColor: Color(0xffF2F2F2),
                                              hintText: "No file choosen",
                                              hintStyle: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 11,
                                              ),
                                              focusColor: Colors.white,
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black)),
                                            ),
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                            validator: (value) {
                                              if (value.isEmpty) {
                                                return 'Please enter';
                                              }
                                              return null;
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'Valid',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        ButtonTheme(
                                          height: 30,
                                          minWidth: 30,
                                          child: RaisedButton(
                                            onPressed: () {},
                                            color: Color(0xffB4B4B4),
                                            shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                  color: Color(0xff535057),
                                                ),
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0.0),
                                                  topLeft: Radius.circular(0.0),
                                                  bottomRight:
                                                      Radius.circular(0.0),
                                                  topRight:
                                                      Radius.circular(0.0),
                                                )),
                                            child: Text(
                                              'Choose file',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 30,
                                          width: 200,
                                          margin: EdgeInsets.fromLTRB(
                                              0.0, 0.0, 5.0, 0.0),
                                          child: TextFormField(
                                            maxLines: 3,
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              filled: true,
                                              fillColor: Color(0xffF2F2F2),
                                              hintText: "No file choosen",
                                              hintStyle: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 11),
                                              focusColor: Colors.white,
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black)),
                                            ),
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                            validator: (value) {
                                              if (value.isEmpty) {
                                                return 'Please enter phone number';
                                              }
                                              return null;
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'Narration',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          width: 300,
                                          margin: EdgeInsets.fromLTRB(
                                              0.0, 0.0, 5.0, 0.0),
                                          child: TextFormField(
                                            maxLines: 3,
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              filled: true,
                                              fillColor: Color(0xffF2F2F2),
                                              hintText: "",
                                              hintStyle: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 9,
                                              ),
                                              focusColor: Colors.white,
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black)),
                                            ),
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                            validator: (value) {
                                              if (value.isEmpty) {
                                                return 'Please enter phone number';
                                              }
                                              return null;
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 60,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0.0, 0.0, 0.0, 0.0),
                                      child: Center(
                                        child: Column(
                                          children: <Widget>[
                                            ButtonTheme(
                                              height: 49,
                                              minWidth: 200,
                                              child: RaisedButton(
                                                  onPressed: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              VerifySuccess()),
                                                    );
                                                  },
                                                  color: Color(0xffAF2E1D),
                                                  shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                      color: Color(0xffAF2E1D),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(40.0),
                                                    ),
                                                  ),
                                                  child: Text(
                                                    'SEND',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  )),
                                            ),
                                            SizedBox(
                                              height: 20,
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
