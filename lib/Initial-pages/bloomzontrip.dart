import 'package:bloomzon/Initial-pages/account-creation.dart';
import 'package:bloomzon/buyers/bloomzon-products.dart';
import 'package:bloomzon/buyers/products.dart';
import 'package:bloomzon/groceries/groceriesdashboard.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class BloomzonTripPage extends StatefulWidget {
  @override
  _BloomzonTripPageState createState() => _BloomzonTripPageState();
}

class _BloomzonTripPageState extends State<BloomzonTripPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        iconTheme: new IconThemeData(color: Color(0xff02499B)),
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                child: ButtonTheme(
                  height: 35,
                  minWidth: 50,
                  child: RaisedButton(
                    color: Color(0xffAF2E1D),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        style: BorderStyle.solid,
                        color: Color(0xffAF2E1D),
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 19,
                      ),
                    ),
                    textColor: Colors.white,
                    highlightElevation: 8.0,
                    splashColor: Colors.white,
                    elevation: 2.0,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 0.0, 15.0, 0.0),
                child: ButtonTheme(
                  height: 35,
                  minWidth: 50,
                  child: RaisedButton(
                    color: Color(0xff02499B),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        style: BorderStyle.solid,
                        color: Color(0xff02499B),
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                    ),
                    child: Text(
                      "Signup",
                      style: TextStyle(
                        fontSize: 19,
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
                            builder: (context) => AccountCreationPage()),
                      );
                    },
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      backgroundColor: Color(0xffF2F2F2),
      drawer: new Drawer(
          child: new ListView(
        children: <Widget>[
          new ListTile(
            title: new Text(
              'Categories',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xff02499B),
              ),
            ),
            onTap: () {},
          ),
          ExpansionTile(
            leading: Image.asset('images/vendor.png'),
            title: Text(
              'Vendors',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xff02499B),
              ),
            ),
            children: <Widget>[
              GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(70.0, 5.0, 0.0, 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Sellers',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff02499B),
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
//                  Navigator.push(
//                    context,
//                    MaterialPageRoute(builder: (context) => PostAdPage()),
//                  );
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(70.0, 5.0, 0.0, 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Professionals',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff02499B),
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
//                  Navigator.push(
//                    context,
//                    MaterialPageRoute(builder: (context) => PostAdPage()),
//                  );
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(70.0, 5.0, 0.0, 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Manufacturers',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff02499B),
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => GroceriesDashboardPage()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(70.0, 5.0, 0.0, 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Fast Food & Groceries',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff02499B),
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          new ListTile(
            leading: Image.asset('images/allproducts.png'),
            title: new Text(
              'All Products',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xff02499B),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductPage()),
              );
            },
          ),
          new ListTile(
            leading: Image.asset('images/bloomsales.png'),
            title: new Text(
              'Bloomzon Sales',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xff02499B),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BloomzonProductPage()),
              );
            },
          ),
          ExpansionTile(
            leading: Image.asset('images/flight.png'),
            title: Text(
              'Flight',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xff02499B),
              ),
            ),
            children: <Widget>[
              GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(70.0, 5.0, 0.0, 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Change App',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff02499B),
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(70.0, 5.0, 0.0, 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Language(English, French, Latin)',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff02499B),
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(70.0, 5.0, 0.0, 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff02499B),
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AccountCreationPage()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(70.0, 5.0, 0.0, 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff02499B),
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
//                  Navigator.push(
//                    context,
//                    MaterialPageRoute(builder: (context) => PostAdPage()),
//                  );
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(70.0, 5.0, 0.0, 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Become an Agent',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff02499B),
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          new ListTile(
            leading: Image.asset('images/tv.png'),
            title: new Text(
              'Bloomzon TV',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xff02499B),
              ),
            ),
            onTap: () {},
          ),
          new ListTile(
            title: new Text(
              'Bloomzon Properties',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xff02499B),
              ),
            ),
            onTap: () {},
          ),
          new ListTile(
            title: new Text(
              'Bloomzon Trip',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xff02499B),
              ),
            ),
            onTap: () {},
          ),
          new Divider(),
        ],
      )),
      body: SingleChildScrollView(
        child: Container(
          child: SafeArea(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 200,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Bloomzon Trip',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff02499B),
                          ),
                        ),
                        Text(
                          'Coming Soon',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff02499B),
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
