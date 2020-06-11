import 'package:bloomzon/buyers/buyerdashboard.dart';
import 'package:flutter/material.dart';

class SellerSuccess extends StatefulWidget {
  @override
  _SellerSuccessState createState() => _SellerSuccessState();
}

class _SellerSuccessState extends State<SellerSuccess> {
  Image image1;

  @override
  void initState() {
    super.initState();
    image1 = Image.asset(
      "images/admin-message.png",
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
    return Scaffold(
      body: Container(
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
                      Row(
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
                        ],
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Center(
                        child: Text(
                          "We are Currently",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Center(child: Image.asset('images/mark.png')),
                      SizedBox(
                        height: 40,
                      ),
                      Center(
                        child: Container(
                          width: 250,
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Reviewing your Profile",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "(This will take 48hrs to approve)",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            ButtonTheme(
                              height: 33,
                              minWidth: 45,
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
                                  "Back to Home",
                                  style: TextStyle(
                                    fontSize: 12,
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
                                            BuyerDashboardPage()),
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
      ),
    );
  }
}
