import 'package:bloomzon/Initial-pages/login.dart';
import 'package:bloomzon/groceries/groceriesdashboard.dart';
import 'package:flutter/material.dart';

class GrocerySuccess extends StatefulWidget {
  @override
  _GrocerySuccessState createState() => _GrocerySuccessState();
}

class _GrocerySuccessState extends State<GrocerySuccess> {
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
                        "Thank You",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Center(child: Image.asset('images/mark.png')),
                    SizedBox(
                      height: 50,
                    ),
                    Center(
                      child: Text(
                        "Our Representative will contact your shortly",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        "Kindly check your mail for updates",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      alignment: Alignment.centerRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          ButtonTheme(
                            height: 25,
                            minWidth: 80,
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
                                "Next",
                                style: TextStyle(
                                  fontSize: 14,
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
