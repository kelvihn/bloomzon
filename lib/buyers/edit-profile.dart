import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
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
        backgroundColor: Color(0xff1A1A1A),
        elevation: 0.0,
      ),
      backgroundColor: Color(0xff1A1A1A),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(3.0),
                          decoration: new BoxDecoration(
                            // border color
                            shape: BoxShape.circle,
                          ),
                          child: CircleAvatar(
                            backgroundImage: AssetImage('images/userface.png'),
                            radius: 50.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
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
                                      fillColor: Color(0xff1A1A1A),
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
                                      'PHONE NUMBER',
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
                                      fillColor: Color(0xff1A1A1A),
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
                                        return 'Please enter phone number';
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
                                      'EMAIL',
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
                                      fillColor: Color(0xff1A1A1A),
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
                                      'ADDRESS',
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
                                      fillColor: Color(0xff1A1A1A),
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
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'BILLING ADDRESS',
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
                                      fillColor: Color(0xff1A1A1A),
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
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'SECURITY PIN',
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
                                      fillColor: Color(0xff1A1A1A),
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
                                        return 'Please enter pin';
                                      }
                                      return null;
                                    },
                                  ),
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
                    color: Color(0xffAF2E1D),
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
