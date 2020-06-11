import 'package:badges/badges.dart';
import 'package:bloomzon/delivery-merchant/chat.dart';
import 'package:bloomzon/delivery-merchant/deliverydashboard.dart';
import 'package:bloomzon/delivery-merchant/write-admin.dart';
import 'package:flutter/material.dart';

class MessagesPage extends StatefulWidget {
  @override
  _MessagesPageState createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 35.0, 10.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Color(0xff02499B),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DeliveryDashboardPage()),
                        );
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'MESSAGES',
                        style: TextStyle(
                          color: Color(0xff02499B),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ButtonTheme(
                      height: 15,
                      minWidth: 25,
                      child: RaisedButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            style: BorderStyle.solid,
                            color: Color(0xff02499B),
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            "Create New Converstion",
                            style: TextStyle(
                                fontSize: 8, color: Color(0xff02499B)),
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
                                builder: (context) => WriteAdminPage()),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 330,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Search",
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0)))),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
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
                        Badge(
                          badgeColor: Color(0xffAF2E1D),
                          shape: BadgeShape.circle,
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
                      padding: EdgeInsets.fromLTRB(35.0, 0.0, 35.0, 10.0),
                      child: Text(
                        'Your request has been treated, the seller has been contacted, your goods is currently on transit. We apologise for the inconvenience',
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
              height: 10,
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
                        Badge(
                          badgeColor: Color(0xffAF2E1D),
                          shape: BadgeShape.circle,
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
                      padding: EdgeInsets.fromLTRB(35.0, 0.0, 35.0, 10.0),
                      child: Text(
                        'Your request has been treated, the seller has been contacted, your goods is currently on transit. We apologise for the inconvenience',
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
              height: 10,
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
                        Badge(
                          badgeColor: Color(0xffAF2E1D),
                          shape: BadgeShape.circle,
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
                      padding: EdgeInsets.fromLTRB(35.0, 0.0, 35.0, 10.0),
                      child: Text(
                        'Your request has been treated, the seller has been contacted, your goods is currently on transit. We apologise for the inconvenience',
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
              height: 10,
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
                        Badge(
                          badgeColor: Color(0xffAF2E1D),
                          shape: BadgeShape.circle,
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
                      padding: EdgeInsets.fromLTRB(35.0, 0.0, 35.0, 10.0),
                      child: Text(
                        'Your request has been treated, the seller has been contacted, your goods is currently on transit. We apologise for the inconvenience',
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
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
