import 'package:bloomzon/shopper/shopperdashboard.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ShopperLoginPage extends StatefulWidget {
  @override
  _ShopperLoginPageState createState() => _ShopperLoginPageState();
}

class _ShopperLoginPageState extends State<ShopperLoginPage> {
  Image image1;

  @override
  void initState() {
    super.initState();
    image1 = Image.asset(
      "images/image4.png",
      fit: BoxFit.fill,
    );
  }

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
        title: Text(
          'Warehouse Shoppers Associates',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        //`true` if you want Flutter to automatically add Back Button when needed,
        //or `false` if you want to force your own back button every where
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    color: Color(0xff02499B),
                    height: 120,
                  ),
                  Column(
                    children: <Widget>[
                      Center(child: Image.asset('images/logo.png')),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Username:',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xff02499B),
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding:
                          const EdgeInsets.fromLTRB(32.0, 16.0, 32.0, 16.0),
                      child: Container(
                        height: 50,
                        width: 300,
                        child: TextField(
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                              const Radius.circular(50.0),
                            )),
                            hintText: 'Email or Phone Number',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                            ),
                            filled: true,
                            fillColor: Color(0xffEBEBEB),
                            labelStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            focusColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(50.0),
                                ),
                                borderSide: BorderSide(
                                  color: Color(0xff02499B),
                                )),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Password:',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xff02499B),
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding:
                          const EdgeInsets.fromLTRB(32.0, 16.0, 32.0, 16.0),
                      child: Container(
                        height: 50,
                        width: 300,
                        child: TextField(
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                              const Radius.circular(50.0),
                            )),
                            hintText: 'More than 6 Characters',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                            ),
                            filled: true,
                            fillColor: Color(0xffEBEBEB),
                            labelStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            focusColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(50.0),
                                ),
                                borderSide: BorderSide(
                                  color: Color(0xff02499B),
                                )),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(100.0, 0.0, 0.0, 0.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              'Forgot your password Click',
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
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'Forgot your username Click',
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
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ButtonTheme(
                    height: 49,
                    minWidth: 200,
                    child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ShopperDashboardPage()),
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
                          'Sign In',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
