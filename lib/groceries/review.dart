import 'package:bloomzon/groceries/chat.dart';
import 'package:bloomzon/groceries/groceriesdashboard.dart';
import 'package:flutter/material.dart';

class ReviewPage extends StatefulWidget {
  @override
  _ReviewPageState createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  String currency;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: 450,
                  child: Image.asset('images/not_bg.png'),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
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
                                builder: (context) => GroceriesDashboardPage()),
                          );
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'All Review & Feedback',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                Container(
                  child: Image.asset('images/review_bg.png'),
                ),
                Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ChatPage()),
                        );
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Icon(
                                  Icons.person_pin,
                                  size: 40,
                                ),
                                ButtonTheme(
                                  height: 15,
                                  minWidth: 25,
                                  child: RaisedButton(
                                    color: Color(0xff02499B),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        style: BorderStyle.solid,
                                        color: Colors.black,
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(50.0),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(
                                        "Admin",
                                        style: TextStyle(
                                            fontSize: 8, color: Colors.white),
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
                                  width: 5,
                                ),
                                Column(
                                  children: <Widget>[
                                    Container(
                                      width: 50,
                                      height: 14,
                                      child: Image.asset('images/stars.png'),
                                    ),
                                    ButtonTheme(
                                      height: 10,
                                      minWidth: 15,
                                      child: RaisedButton(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            style: BorderStyle.solid,
                                            color: Colors.black,
                                          ),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(50.0),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: Text(
                                            "Reply",
                                            style: TextStyle(
                                                fontSize: 8,
                                                color: Color(0xff02499B)),
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
                                                    ChatPage()),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              padding:
                                  EdgeInsets.fromLTRB(0.0, 0.0, 35.0, 10.0),
                              child: Text(
                                'I need a request TREATED',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Container(
                      width: 300,
                      height: 2,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ChatPage()),
                        );
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Icon(
                                  Icons.person_pin,
                                  size: 40,
                                ),
                                ButtonTheme(
                                  height: 15,
                                  minWidth: 25,
                                  child: RaisedButton(
                                    color: Color(0xff02499B),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        style: BorderStyle.solid,
                                        color: Colors.black,
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(50.0),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(
                                        "Admin",
                                        style: TextStyle(
                                            fontSize: 8, color: Colors.white),
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
                                  width: 5,
                                ),
                                Column(
                                  children: <Widget>[
                                    Container(
                                      width: 50,
                                      height: 14,
                                      child: Image.asset('images/stars.png'),
                                    ),
                                    ButtonTheme(
                                      height: 10,
                                      minWidth: 15,
                                      child: RaisedButton(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            style: BorderStyle.solid,
                                            color: Colors.black,
                                          ),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(50.0),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: Text(
                                            "Reply",
                                            style: TextStyle(
                                                fontSize: 8,
                                                color: Color(0xff02499B)),
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
                                                    ChatPage()),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              padding:
                                  EdgeInsets.fromLTRB(0.0, 0.0, 35.0, 10.0),
                              child: Text(
                                'I need a request TREATED',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Container(
                      width: 300,
                      height: 2,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ChatPage()),
                        );
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Icon(
                                  Icons.person_pin,
                                  size: 40,
                                ),
                                ButtonTheme(
                                  height: 15,
                                  minWidth: 25,
                                  child: RaisedButton(
                                    color: Color(0xff02499B),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        style: BorderStyle.solid,
                                        color: Colors.black,
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(50.0),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(
                                        "Admin",
                                        style: TextStyle(
                                            fontSize: 8, color: Colors.white),
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
                                  width: 5,
                                ),
                                Column(
                                  children: <Widget>[
                                    Container(
                                      width: 50,
                                      height: 14,
                                      child: Image.asset('images/stars.png'),
                                    ),
                                    ButtonTheme(
                                      height: 10,
                                      minWidth: 15,
                                      child: RaisedButton(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            style: BorderStyle.solid,
                                            color: Colors.black,
                                          ),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(50.0),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: Text(
                                            "Reply",
                                            style: TextStyle(
                                                fontSize: 8,
                                                color: Color(0xff02499B)),
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
                                                    ChatPage()),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              padding:
                                  EdgeInsets.fromLTRB(0.0, 0.0, 35.0, 10.0),
                              child: Text(
                                'I need a request TREATED',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Container(
                      width: 300,
                      height: 3,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ChatPage()),
                        );
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Icon(
                                  Icons.person_pin,
                                  size: 40,
                                ),
                                ButtonTheme(
                                  height: 15,
                                  minWidth: 25,
                                  child: RaisedButton(
                                    color: Color(0xff02499B),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        style: BorderStyle.solid,
                                        color: Colors.black,
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(50.0),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(
                                        "Admin",
                                        style: TextStyle(
                                            fontSize: 8, color: Colors.white),
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
                                  width: 5,
                                ),
                                Column(
                                  children: <Widget>[
                                    Container(
                                      width: 50,
                                      height: 14,
                                      child: Image.asset('images/stars.png'),
                                    ),
                                    ButtonTheme(
                                      height: 10,
                                      minWidth: 15,
                                      child: RaisedButton(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            style: BorderStyle.solid,
                                            color: Colors.black,
                                          ),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(50.0),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: Text(
                                            "Reply",
                                            style: TextStyle(
                                                fontSize: 8,
                                                color: Color(0xff02499B)),
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
                                                    ChatPage()),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              padding:
                                  EdgeInsets.fromLTRB(0.0, 0.0, 35.0, 10.0),
                              child: Text(
                                'I need a request TREATED',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
