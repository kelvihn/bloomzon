import 'package:bloomzon/professional-services/bottom-nav.dart';
import 'package:flutter/material.dart';

class AttachmentsPage extends StatefulWidget {
  @override
  _AttachmentsPageState createState() => _AttachmentsPageState();
}

class _AttachmentsPageState extends State<AttachmentsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Color(0xff02499B)),
        title: Center(
          child: Text(
            "Attachments",
            style: TextStyle(
              fontSize: 20,
              color: Color(0xff02499B),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: SafeArea(
            child: Stack(
              children: <Widget>[
                Container(
                  child: Image.asset(
                    'images/at_bg.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 150,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              width: 180,
                              height: 100,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                color: Colors.white,
                              ),
                              child: Image.asset('images/file.png'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "My Description",
                              style: TextStyle(
                                fontSize: 17,
                                color: Color(0xff02499B),
                              ),
                            ),
                            Text(
                              "Measurements",
                              style: TextStyle(
                                fontSize: 17,
                                color: Color(0xff02499B),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              width: 180,
                              height: 100,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                color: Colors.white,
                              ),
                              child: Image.asset('images/skirt.png'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "My Material",
                              style: TextStyle(
                                fontSize: 17,
                                color: Color(0xff02499B),
                              ),
                            ),
                            Text(
                              "",
                              style: TextStyle(
                                fontSize: 17,
                                color: Color(0xff02499B),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              width: 180,
                              height: 100,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                color: Colors.white,
                              ),
                              child: Image.asset('images/model.png'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "My design",
                              style: TextStyle(
                                fontSize: 17,
                                color: Color(0xff02499B),
                              ),
                            ),
                          ],
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
      bottomNavigationBar: BottomNav(),
    );
  }
}
