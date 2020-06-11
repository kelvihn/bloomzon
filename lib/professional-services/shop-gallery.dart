import 'package:bloomzon/professional-services/add-gallery.dart';
import 'package:flutter/material.dart';

class GalleryPage extends StatefulWidget {
  @override
  _GalleryPageState createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xff02499B),
        elevation: 0.0,
        title: Center(
          child: Text(
            "HOW USERS SEE YOU",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      backgroundColor: Color(0xffF2F2F2),
      body: SingleChildScrollView(
        child: Container(
          child: SafeArea(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 450,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "SHOP:",
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    ButtonTheme(
                                      height: 10,
                                      minWidth: 20,
                                      child: RaisedButton(
                                          onPressed: () {},
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
                                            'Edit',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          )),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "LOCATION:",
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    ButtonTheme(
                                      height: 10,
                                      minWidth: 20,
                                      child: RaisedButton(
                                          onPressed: () {},
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
                                            'Edit',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          )),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "SERVICE:",
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    ButtonTheme(
                                      height: 10,
                                      minWidth: 20,
                                      child: RaisedButton(
                                          onPressed: () {},
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
                                            'Edit',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          )),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "CONTACT:",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Ose fashion house",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 55,
                                ),
                                Text(
                                  "Abuja",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 55,
                                ),
                                Text(
                                  "We sell all wears",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 60,
                                ),
                                Text(
                                  "08053232336",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      ButtonTheme(
                        height: 30,
                        minWidth: 120,
                        child: RaisedButton(
                            onPressed: () {},
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
                              'SAVE',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 450,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 5,
                      ),
                      Center(
                        child: Text(
                          "Shop Picture",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
//                              Navigator.push(
//                                context,
//                                MaterialPageRoute(builder: (context) => ProductPage()),
//                              );
                            },
                            child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      'images/tube.png',
                                      height: 90,
                                      width: 120,
                                    ),
                                    Text(
                                      'Measurement',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                          GestureDetector(
                            onTap: () {
//                              Navigator.push(
//                                context,
//                                MaterialPageRoute(builder: (context) => ProductPage()),
//                              );
                            },
                            child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      'images/wed.png',
                                      height: 90,
                                      width: 120,
                                    ),
                                    Text(
                                      'Gown for wedding',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                          GestureDetector(
                            onTap: () {
//                              Navigator.push(
//                                context,
//                                MaterialPageRoute(builder: (context) => ProductPage()),
//                              );
                            },
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: Image.asset(
                                    'images/ay.png',
                                    height: 90,
                                    width: 120,
                                  ),
                                ),
                                Text(
                                  'AY academy',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
//                              Navigator.push(
//                                context,
//                                MaterialPageRoute(builder: (context) => ProductPage()),
//                              );
                            },
                            child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      'images/wed.png',
                                      height: 90,
                                      width: 120,
                                    ),
                                    Text(
                                      '',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                          GestureDetector(
                            onTap: () {
//                              Navigator.push(
//                                context,
//                                MaterialPageRoute(builder: (context) => ProductPage()),
//                              );
                            },
                            child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      'images/tube.png',
                                      height: 90,
                                      width: 120,
                                    ),
                                    Text(
                                      'Our work',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                          GestureDetector(
                            onTap: () {
//                              Navigator.push(
//                                context,
//                                MaterialPageRoute(
//                                    builder: (context) => ProductPage()),
//                              );
                            },
                            child: Container(
                              width: 120,
                              height: 40,
                              child: Column(
                                children: <Widget>[],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      ButtonTheme(
                        height: 49,
                        minWidth: 80,
                        child: RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddGalleryPage()),
                              );
                            },
                            color: Color(0xff02499B),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: Color(0xff02499B),
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(40.0),
                              ),
                            ),
                            child: Text(
                              'Add to Gallery',
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
        ),
      ),
    );
  }
}
