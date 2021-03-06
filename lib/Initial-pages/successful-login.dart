import 'package:bloomzon/groceries/groceriesdashboard.dart';
import 'package:flutter/material.dart';

class LoginSuccess extends StatefulWidget {
  @override
  _LoginSuccessState createState() => _LoginSuccessState();
}

class _LoginSuccessState extends State<LoginSuccess> {
  Image image1;

  @override
  void initState() {
    super.initState();
    image1 = Image.asset(
      "images/login.png",
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
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            child: image1,
            height: size.height,
            width: size.width,
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 70,
                    ),
                    Center(
                      child: Text(
                        "Login Successful",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Center(child: Image.asset('images/mark.png')),
                    SizedBox(
                      height: 100,
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          ButtonTheme(
                            height: 49,
                            minWidth: 200,
                            child: RaisedButton(
                              color: Colors.transparent,
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
                                "Start Transaction",
                                style: TextStyle(
                                  fontSize: 16,
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
                                          GroceriesDashboardPage()),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
