import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
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
        iconTheme: new IconThemeData(color: Color(0xff02499B)),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 0.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              CircleAvatar(
                                backgroundImage: AssetImage(
                                  'images/logo-cir.png',
                                ),
                                radius: 50.0,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    "KFC Restaurant",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xff02499B),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  ButtonTheme(
                                    height: 20,
                                    minWidth: 40,
                                    child: RaisedButton(
                                        onPressed: () {},
                                        color: Color(0xff4A6A90),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            color: Color(0xff02499B),
                                          ),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(40.0),
                                          ),
                                        ),
                                        child: Text(
                                          'Edit',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Name',
                                  style: TextStyle(
                                    color: Color(0xff02499B),
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
                                  height: 30,
                                  width: 250,
                                  margin:
                                      EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      border: UnderlineInputBorder(),
                                      filled: true,
                                      fillColor: Color(0xffF4F4F4),
                                      hintText: "Anabel Olivia",
                                      hintStyle: TextStyle(
                                        color: Color(0xff02499B),
                                      ),
                                      focusColor: Colors.white,
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white)),
                                    ),
                                    style: TextStyle(
                                      color: Color(0xff02499B),
                                    ),
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return 'Please enter phone number';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                ButtonTheme(
                                  height: 30,
                                  minWidth: 40,
                                  child: RaisedButton(
                                      onPressed: () {},
                                      color: Color(0xff4A6A90),
                                      shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            color: Color(0xff02499B),
                                          ),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            topLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(10),
                                            topRight: Radius.circular(10),
                                          )),
                                      child: Text(
                                        'Edit',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      )),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Phone Number',
                                  style: TextStyle(
                                    color: Color(0xff02499B),
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
                                  height: 30,
                                  width: 250,
                                  margin:
                                      EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      border: UnderlineInputBorder(),
                                      filled: true,
                                      fillColor: Color(0xffF4F4F4),
                                      hintText: "08158727364",
                                      hintStyle: TextStyle(
                                        color: Color(0xff02499B),
                                      ),
                                      focusColor: Colors.white,
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white)),
                                    ),
                                    style: TextStyle(
                                      color: Color(0xff02499B),
                                    ),
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return 'Please enter phone number';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                ButtonTheme(
                                  height: 30,
                                  minWidth: 40,
                                  child: RaisedButton(
                                      onPressed: () {},
                                      color: Color(0xff4A6A90),
                                      shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            color: Color(0xff02499B),
                                          ),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            topLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(10),
                                            topRight: Radius.circular(10),
                                          )),
                                      child: Text(
                                        'Edit',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      )),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Email',
                                  style: TextStyle(
                                    color: Color(0xff02499B),
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
                                  height: 30,
                                  width: 250,
                                  margin:
                                      EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      border: UnderlineInputBorder(),
                                      filled: true,
                                      fillColor: Color(0xffF4F4F4),
                                      hintText: "Ginning@yahoo.com",
                                      hintStyle: TextStyle(
                                        color: Color(0xff02499B),
                                      ),
                                      focusColor: Colors.white,
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white)),
                                    ),
                                    style: TextStyle(
                                      color: Color(0xff02499B),
                                    ),
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return 'Please enter phone number';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                ButtonTheme(
                                  height: 30,
                                  minWidth: 40,
                                  child: RaisedButton(
                                      onPressed: () {},
                                      color: Color(0xff4A6A90),
                                      shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            color: Color(0xff02499B),
                                          ),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            topLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(10),
                                            topRight: Radius.circular(10),
                                          )),
                                      child: Text(
                                        'Edit',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      )),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Address',
                                  style: TextStyle(
                                    color: Color(0xff02499B),
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
                                  height: 30,
                                  width: 250,
                                  margin:
                                      EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      border: UnderlineInputBorder(),
                                      filled: true,
                                      fillColor: Color(0xffF4F4F4),
                                      hintText: "Wuse 2 Abuja",
                                      hintStyle: TextStyle(
                                        color: Color(0xff02499B),
                                      ),
                                      focusColor: Colors.white,
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white)),
                                    ),
                                    style: TextStyle(
                                      color: Color(0xff02499B),
                                    ),
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return 'Please enter phone number';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                ButtonTheme(
                                  height: 30,
                                  minWidth: 40,
                                  child: RaisedButton(
                                      onPressed: () {},
                                      color: Color(0xff4A6A90),
                                      shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            color: Color(0xff02499B),
                                          ),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            topLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(10),
                                            topRight: Radius.circular(10),
                                          )),
                                      child: Text(
                                        'Edit',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      )),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Password',
                                  style: TextStyle(
                                    color: Color(0xff02499B),
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
                                  height: 30,
                                  width: 250,
                                  margin:
                                      EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      border: UnderlineInputBorder(),
                                      filled: true,
                                      fillColor: Color(0xffF4F4F4),
                                      hintText: "Firedragon",
                                      hintStyle: TextStyle(
                                        color: Color(0xff02499B),
                                      ),
                                      focusColor: Colors.white,
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white)),
                                    ),
                                    style: TextStyle(
                                      color: Color(0xff02499B),
                                    ),
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return 'Please enter phone number';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                ButtonTheme(
                                  height: 30,
                                  minWidth: 40,
                                  child: RaisedButton(
                                      onPressed: () {},
                                      color: Color(0xff4A6A90),
                                      shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            color: Color(0xff02499B),
                                          ),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            topLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(10),
                                            topRight: Radius.circular(10),
                                          )),
                                      child: Text(
                                        'Edit',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      )),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Service',
                                  style: TextStyle(
                                    color: Color(0xff02499B),
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  width: 300,
                                  margin:
                                      EdgeInsets.fromLTRB(0.0, 0.0, 25.0, 0.0),
                                  child: TextFormField(
                                    maxLines: 2,
                                    decoration: InputDecoration(
                                      border: UnderlineInputBorder(),
                                      filled: true,
                                      fillColor: Color(0xffF4F4F4),
                                      hintText: "",
                                      hintStyle: TextStyle(
                                        color: Color(0xff02499B),
                                      ),
                                      focusColor: Colors.white,
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white)),
                                    ),
                                    style: TextStyle(
                                      color: Color(0xff02499B),
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
                          ],
                        ),
                      ),
                    ],
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
