import 'package:bloomzon/delivery-merchant/deliverydashboard.dart';
import 'package:bloomzon/delivery-merchant/message-successful.dart';
import 'package:flutter/material.dart';

class WriteAdminPage extends StatefulWidget {
  @override
  _WriteAdminPageState createState() => _WriteAdminPageState();
}

class _WriteAdminPageState extends State<WriteAdminPage> {
  String currency;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: Column(
        children: <Widget>[
          Container(
            color: Color(0xffAF2E1D),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DeliveryDashboardPage()),
                      );
                    },
                  ),
                  Row(
                    children: <Widget>[
                      Image.asset(
                        'images/contactadmin.png',
                        width: 65,
                        height: 60,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Write Admin',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Subject',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color(0xff262424),
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(32.0, 16.0, 32.0, 16.0),
                    child: Container(
                      height: 50,
                      width: 300,
                      child: TextField(
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                            const Radius.circular(5.0),
                          )),
                          hintText: '',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          labelStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                          focusColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(5.0),
                              ),
                              borderSide: BorderSide(
                                color: Color(0xff02499B),
                              )),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Request Type',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xff262424),
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(32.0, 0.0, 32.0, 0.0),
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      canvasColor: Colors.grey,
                    ),
                    child: new DropdownButtonFormField<String>(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        filled: true,
                        fillColor: Colors.white,
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        focusColor: Colors.white,
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                      ),
                      validator: (String newValue) {
                        if (newValue == null) {
                          return 'Please enter';
                        }
                        return null;
                      },
                      hint: Text(
                        'Select Subject',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      onChanged: (String newValue) {},
                      items: <String>[
                        'Delviery',
                        'Service',
                        'Fraud',
                        'Refund',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return new DropdownMenuItem<String>(
                          value: value,
                          child: new Text(
                            value,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(32.0, 16.0, 32.0, 16.0),
                    child: Container(
                      width: 300,
                      child: TextField(
                        maxLines: 5,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                            const Radius.circular(5.0),
                          )),
                          hintText: 'Type your message',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 17,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          labelStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          focusColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(5.0),
                              ),
                              borderSide: BorderSide(
                                color: Color(0xffC1C1C1),
                              )),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 0.0, 40.0, 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      ButtonTheme(
                        height: 39,
                        minWidth: 90,
                        child: RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MessageSuccess()),
                              );
                            },
                            color: Color(0xff02499B),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: Color(0xff02499B),
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(5.0),
                              ),
                            ),
                            child: Text(
                              'Send',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
