import 'package:flutter/material.dart';

class UserSubPage extends StatefulWidget {
  @override
  _UserSubPageState createState() => _UserSubPageState();
}

class _UserSubPageState extends State<UserSubPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xff02499B),
        elevation: 0.0,
      ),
      backgroundColor: Color(0xffF2F2F2),
      body: SingleChildScrollView(
        child: Container(
          child: SafeArea(
            child: Stack(
              children: <Widget>[
                Container(
                  height: 300,
                  width: 450,
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                      child: Image.asset(
                        'images/user_sub2.png',
                        fit: BoxFit.fill,
                      )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              "User Account Type",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 80,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 0, top: 20, right: 0, bottom: 0),
                          height: 200,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 40,
                              ),
                              Icon(
                                Icons.person_pin,
                                color: Color(0xff02499B),
                                size: 50,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'Your Package:',
                                    style: TextStyle(
                                      color: Color(0xff02499B),
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    'BASIC',
                                    style: TextStyle(
                                        color: Color(0xff02499B),
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 70,
                        ),
                        ButtonTheme(
                          height: 50,
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
                              "Upgrade to Premium",
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
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
