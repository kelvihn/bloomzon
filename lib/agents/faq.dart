import 'package:flutter/material.dart';

class FaqPage extends StatefulWidget {
  @override
  _FaqPageState createState() => _FaqPageState();
}

class _FaqPageState extends State<FaqPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Color(0xff02499B),
        ),
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Text(
                  "How Does this Work?",
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xff02499B),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'FAQ',
                        style: TextStyle(
                            color: Color(0xff02499B),
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 350,
                  child: ExpansionTile(
                    title: Text(
                      'What is Bloomzon?',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff02499B),
                      ),
                    ),
                    children: <Widget>[
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(20.0, 5.0, 0.0, 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Dispute',
                              style: TextStyle(
                                fontSize: 17,
                                color: Color(0xff02499B),
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Color(0xff02499B),
                  height: 1,
                  width: 320,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 350,
                  child: ExpansionTile(
                    title: Text(
                      'Can I work with Bloomzon?',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff02499B),
                      ),
                    ),
                    children: <Widget>[
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(20.0, 5.0, 0.0, 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Dispute',
                              style: TextStyle(
                                fontSize: 17,
                                color: Color(0xff02499B),
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Color(0xff02499B),
                  height: 1,
                  width: 320,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 350,
                  child: ExpansionTile(
                    title: Text(
                      'What is the requirements?',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff02499B),
                      ),
                    ),
                    children: <Widget>[
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(20.0, 5.0, 0.0, 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Dispute',
                              style: TextStyle(
                                fontSize: 17,
                                color: Color(0xff02499B),
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Color(0xff02499B),
                  height: 1,
                  width: 320,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 350,
                  child: ExpansionTile(
                    title: Text(
                      'How do I join?',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff02499B),
                      ),
                    ),
                    children: <Widget>[
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(20.0, 5.0, 0.0, 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Dispute',
                              style: TextStyle(
                                fontSize: 17,
                                color: Color(0xff02499B),
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Color(0xff02499B),
                  height: 1,
                  width: 320,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 350,
                  child: ExpansionTile(
                    title: Text(
                      'How do I profit from this?',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff02499B),
                      ),
                    ),
                    children: <Widget>[
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(20.0, 5.0, 0.0, 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Dispute',
                              style: TextStyle(
                                fontSize: 17,
                                color: Color(0xff02499B),
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Color(0xff02499B),
                  height: 1,
                  width: 320,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 350,
                  child: ExpansionTile(
                    title: Text(
                      'About us?',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff02499B),
                      ),
                    ),
                    children: <Widget>[
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(20.0, 5.0, 0.0, 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Dispute',
                              style: TextStyle(
                                fontSize: 17,
                                color: Color(0xff02499B),
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Color(0xff02499B),
                  height: 1,
                  width: 320,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 350,
                  child: ExpansionTile(
                    title: Text(
                      'Our mission?',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff02499B),
                      ),
                    ),
                    children: <Widget>[
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(20.0, 5.0, 0.0, 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Dispute',
                              style: TextStyle(
                                fontSize: 17,
                                color: Color(0xff02499B),
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Color(0xff02499B),
                  height: 1,
                  width: 320,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 350,
                  child: ExpansionTile(
                    title: Text(
                      'Our offer?',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff02499B),
                      ),
                    ),
                    children: <Widget>[
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(20.0, 5.0, 0.0, 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Dispute',
                              style: TextStyle(
                                fontSize: 17,
                                color: Color(0xff02499B),
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Color(0xff02499B),
                  height: 1,
                  width: 320,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
