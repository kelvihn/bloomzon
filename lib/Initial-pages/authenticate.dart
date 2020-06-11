import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:url_launcher/url_launcher.dart';

import 'successful-login.dart';

class AuthenticatePage extends StatefulWidget {
  @override
  _AuthenticatePageState createState() => _AuthenticatePageState();
}

class _AuthenticatePageState extends State<AuthenticatePage> {
  Image image1;

  @override
  void initState() {
    super.initState();
    image1 = Image.asset(
      "images/image4.png",
      fit: BoxFit.fill,
    );
  }

  TextEditingController textEditingController = TextEditingController();

  bool hasError = false;
  String currentText = "";
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    precacheImage(image1.image, context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Color(0xff02499B),
        elevation: 0.0,
        //`true` if you want Flutter to automatically add Back Button when needed,
        //or `false` if you want to force your own back button every where
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  child: Image.asset(
                    "images/image4.png",
                    fit: BoxFit.fill,
                  ),
                  height: 300,
                  width: 470,
                ),
                Column(
                  children: <Widget>[
                    Center(
                      child: Text(
                        'Authenticate your login',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: 30, top: 20, right: 30, bottom: 50),
                      height: 200,
                      width: 250,
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
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Center(
                          child: PinCodeTextField(
                            length: 4,
                            obsecureText: false,
                            animationType: AnimationType.fade,
                            pinTheme: PinTheme(
                              activeColor: Color(0xff02499B),
                              inactiveColor: Color(0xff02499B),
                              shape: PinCodeFieldShape.underline,
                              borderRadius: BorderRadius.circular(5),
                              fieldHeight: 50,
                              fieldWidth: 40,
                              inactiveFillColor: Color(0xff02499B),
                            ),
                            animationDuration: Duration(milliseconds: 300),
                            onCompleted: (v) {
                              print("Completed");
                            },
                            onChanged: (value) {
                              print(value);
                              setState(() {
                                currentText = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(60.0, 0.0, 60.0, 0.0),
                    child: Text(
                      'Check your mail if you didnt recieve a Code',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xff02499B),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(100.0, 0.0, 0.0, 0.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              'Click',
                              style: TextStyle(
                                color: Color(0xff02499B),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            InkWell(
                              splashColor: Colors.white,
                              highlightColor: Colors.lightBlue,
                              child: Text(
                                "HERE",
                                style: TextStyle(
                                  color: Color(0xffAF2E1D),
                                ),
                              ),
                              onTap: () async {
                                if (await canLaunch("http://www.google.com")) {
                                  await launch("http://www.google.com");
                                }
                              },
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'to send again',
                              style: TextStyle(
                                color: Color(0xff02499B),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ButtonTheme(
                    height: 49,
                    minWidth: 200,
                    child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginSuccess()),
                          );
                        },
                        color: Color(0xffAF2E1D),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color(0xffAF2E1D),
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(40.0),
                          ),
                        ),
                        child: Text(
                          'CONTINUE',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
