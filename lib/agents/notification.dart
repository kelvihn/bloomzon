import 'package:bloomzon/agents/agentdashboard.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
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
                                builder: (context) => AgentDashboardPage()),
                          );
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'NOTIFICATIONS',
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
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Show all',
                    style: TextStyle(
                      color: Color(0xff837878),
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    'Mark all as read',
                    style: TextStyle(
                      color: Color(0xff837878),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    left: BorderSide(
                        color: Color(0xff02499B),
                        style: BorderStyle.solid,
                        width: 5.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            'Admin',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          CircleAvatar(
                            backgroundImage: AssetImage(
                              'images/userface2.png',
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Your request has been treated',
                              style: TextStyle(
                                color: Color(0xff837878),
                                fontSize: 10,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  0.0, 0.0, 110.0, 0.0),
                              child: Text(
                                '8:07 AM',
                                style: TextStyle(
                                  color: Color(0xff837878),
                                  fontSize: 8,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            '13/04/2020',
                            style: TextStyle(
                              color: Color(0xff837878),
                              fontSize: 10,
                            ),
                          ),
                          SizedBox(
                            height: 45,
                          ),
                          Row(
                            children: <Widget>[
                              ButtonTheme(
                                height: 5,
                                minWidth: 5,
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
                                      "View",
                                      style: TextStyle(
                                          fontSize: 8,
                                          color: Color(0xff02499B)),
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
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    left: BorderSide(
                        color: Color(0xffAF2E1D),
                        style: BorderStyle.solid,
                        width: 5.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            'Admin',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          CircleAvatar(
                            backgroundImage: AssetImage(
                              'images/userface2.png',
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Your request has been treated',
                              style: TextStyle(
                                color: Color(0xff837878),
                                fontSize: 10,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  0.0, 0.0, 110.0, 0.0),
                              child: Text(
                                '8:07 AM',
                                style: TextStyle(
                                  color: Color(0xff837878),
                                  fontSize: 8,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            '13/04/2020',
                            style: TextStyle(
                              color: Color(0xff837878),
                              fontSize: 10,
                            ),
                          ),
                          SizedBox(
                            height: 45,
                          ),
                          Row(
                            children: <Widget>[
                              ButtonTheme(
                                height: 5,
                                minWidth: 5,
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
                                      "View",
                                      style: TextStyle(
                                          fontSize: 8,
                                          color: Color(0xff02499B)),
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
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    left: BorderSide(
                        color: Color(0xffAF2E1D),
                        style: BorderStyle.solid,
                        width: 5.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            'Admin',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          CircleAvatar(
                            backgroundImage: AssetImage(
                              'images/userface2.png',
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Your request has been treated',
                              style: TextStyle(
                                color: Color(0xff837878),
                                fontSize: 10,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  0.0, 0.0, 110.0, 0.0),
                              child: Text(
                                '8:07 AM',
                                style: TextStyle(
                                  color: Color(0xff837878),
                                  fontSize: 8,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            '13/04/2020',
                            style: TextStyle(
                              color: Color(0xff837878),
                              fontSize: 10,
                            ),
                          ),
                          SizedBox(
                            height: 45,
                          ),
                          Row(
                            children: <Widget>[
                              ButtonTheme(
                                height: 5,
                                minWidth: 5,
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
                                      "View",
                                      style: TextStyle(
                                          fontSize: 8,
                                          color: Color(0xff02499B)),
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
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    left: BorderSide(
                        color: Color(0xffAF2E1D),
                        style: BorderStyle.solid,
                        width: 5.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            'Admin',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          CircleAvatar(
                            backgroundImage: AssetImage(
                              'images/userface2.png',
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Your request has been treated',
                              style: TextStyle(
                                color: Color(0xff837878),
                                fontSize: 10,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  0.0, 0.0, 110.0, 0.0),
                              child: Text(
                                '8:07 AM',
                                style: TextStyle(
                                  color: Color(0xff837878),
                                  fontSize: 8,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            '13/04/2020',
                            style: TextStyle(
                              color: Color(0xff837878),
                              fontSize: 10,
                            ),
                          ),
                          SizedBox(
                            height: 45,
                          ),
                          Row(
                            children: <Widget>[
                              ButtonTheme(
                                height: 5,
                                minWidth: 5,
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
                                      "View",
                                      style: TextStyle(
                                          fontSize: 8,
                                          color: Color(0xff02499B)),
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
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
