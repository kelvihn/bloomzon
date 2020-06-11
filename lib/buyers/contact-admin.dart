import 'package:bloomzon/buyers/buyerdashboard.dart';
import 'package:bloomzon/buyers/chat.dart';
import 'package:bloomzon/buyers/write-admin.dart';
import 'package:flutter/material.dart';

class ContactAdminPage extends StatefulWidget {
  @override
  _ContactAdminPageState createState() => _ContactAdminPageState();
}

class _ContactAdminPageState extends State<ContactAdminPage> {
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                            builder: (context) => BuyerDashboardPage()),
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
                          'Cases',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  ButtonTheme(
                    height: 39,
                    minWidth: 60,
                    child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WriteAdminPage()),
                          );
                        },
                        color: Color(0xffAF2E1D),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(40.0),
                          ),
                        ),
                        child: Text(
                          'Open New Case',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
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
                              style:
                                  TextStyle(fontSize: 8, color: Colors.white),
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
                        '8:07 AM',
                        style: TextStyle(
                          color: Color(0xff837878),
                          fontSize: 10,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '13/04/2020',
                        style: TextStyle(
                          color: Color(0xff837878),
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 35.0, 10.0),
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
          Container(
            margin: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
            height: 1,
            width: 300,
            color: Color(0xff707070),
          ),
          SizedBox(
            height: 30,
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
                              style:
                                  TextStyle(fontSize: 8, color: Colors.white),
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
                        '8:07 AM',
                        style: TextStyle(
                          color: Color(0xff837878),
                          fontSize: 10,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '13/04/2020',
                        style: TextStyle(
                          color: Color(0xff837878),
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 35.0, 10.0),
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
          Container(
            margin: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
            height: 1,
            width: 300,
            color: Color(0xff707070),
          ),
          SizedBox(
            height: 30,
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
                              style:
                                  TextStyle(fontSize: 8, color: Colors.white),
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
                        '8:07 AM',
                        style: TextStyle(
                          color: Color(0xff837878),
                          fontSize: 10,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '13/04/2020',
                        style: TextStyle(
                          color: Color(0xff837878),
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 35.0, 10.0),
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
          Container(
            margin: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
            height: 1,
            width: 300,
            color: Color(0xff707070),
          ),
          SizedBox(
            height: 30,
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
                              style:
                                  TextStyle(fontSize: 8, color: Colors.white),
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
                        '8:07 AM',
                        style: TextStyle(
                          color: Color(0xff837878),
                          fontSize: 10,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '13/04/2020',
                        style: TextStyle(
                          color: Color(0xff837878),
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 35.0, 10.0),
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
          Container(
            margin: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
            height: 1,
            width: 300,
            color: Color(0xff707070),
          ),
          SizedBox(
            height: 30,
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
                              style:
                                  TextStyle(fontSize: 8, color: Colors.white),
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
                        '8:07 AM',
                        style: TextStyle(
                          color: Color(0xff837878),
                          fontSize: 10,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '13/04/2020',
                        style: TextStyle(
                          color: Color(0xff837878),
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 35.0, 10.0),
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
          Container(
            margin: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
            height: 1,
            width: 300,
            color: Color(0xff707070),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
