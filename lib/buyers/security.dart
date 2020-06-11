import 'package:flutter/material.dart';

class SecurityPage extends StatefulWidget {
  @override
  _SecurityPageState createState() => _SecurityPageState();
}

class _SecurityPageState extends State<SecurityPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text(
          '',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
          ),
        ),
        iconTheme: new IconThemeData(color: Colors.white),
        backgroundColor: Color(0xff02499B),
        elevation: 0.0,
      ),
      backgroundColor: Color(0xff02499B),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset('images/security.png')
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      'LOGIN AND SECURITY',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'USERNAME',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 50,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      border: UnderlineInputBorder(),
                                      filled: true,
                                      fillColor: Color(0xff02499B),
                                      hintText: "",
                                      hintStyle: TextStyle(
                                        color: Colors.white,
                                      ),
                                      focusColor: Colors.white,
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white)),
                                    ),
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return 'Please enter Name';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'CHANGE PASSWORD',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 50,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      border: UnderlineInputBorder(),
                                      filled: true,
                                      fillColor: Color(0xff02499B),
                                      hintText: "",
                                      hintStyle: TextStyle(
                                        color: Colors.white,
                                      ),
                                      focusColor: Colors.white,
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white)),
                                    ),
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return 'Please enter Email';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'CONFIRM PASSWORD',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 50,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      border: UnderlineInputBorder(),
                                      filled: true,
                                      fillColor: Color(0xff02499B),
                                      hintText: "",
                                      hintStyle: TextStyle(
                                        color: Colors.white,
                                      ),
                                      focusColor: Colors.white,
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white)),
                                    ),
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return 'Please enter address';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ButtonTheme(
                  height: 40,
                  minWidth: 100,
                  child: RaisedButton(
                    color: Color(0xff02499B),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        style: BorderStyle.solid,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                    ),
                    child: Text(
                      "SAVE",
                      style: TextStyle(
                        fontSize: 19,
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
          ),
        ],
      ),
    );
  }
}
