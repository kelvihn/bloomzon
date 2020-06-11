import 'package:bloomzon/professional-services/add-product.dart';
import 'package:bloomzon/professional-services/product-detail.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xff02499B),
        elevation: 0.0,
        title: Text(
          "Your Products",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ButtonTheme(
                        height: 35,
                        minWidth: 125,
                        child: RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddProductPage()),
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
                              'ADD PRODUCT',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 450,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.asset('images/sheets.png'),
                        Container(
                          height: 140,
                          color: Colors.grey,
                          width: 1,
                        ),
                        Column(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "We offer & deliver",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "Quality material to your",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "Door step",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                ButtonTheme(
                                  height: 25,
                                  minWidth: 50,
                                  child: RaisedButton(
                                      onPressed: () {},
                                      color: Color(0xffE0E0E0),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: Color(0xffE0E0E0),
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(50.0),
                                        ),
                                      ),
                                      child: Text(
                                        'Edit',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      )),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                ButtonTheme(
                                  height: 25,
                                  minWidth: 50,
                                  child: RaisedButton(
                                      onPressed: () {},
                                      color: Color(0xffE0E0E0),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: Color(0xffE0E0E0),
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(50.0),
                                        ),
                                      ),
                                      child: Text(
                                        'Remove',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      )),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                ButtonTheme(
                                  height: 25,
                                  minWidth: 50,
                                  child: RaisedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ProductDetailPage()),
                                        );
                                      },
                                      color: Color(0xffE0E0E0),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: Color(0xffE0E0E0),
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(50.0),
                                        ),
                                      ),
                                      child: Text(
                                        'View',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 450,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.asset('images/sheets.png'),
                        Container(
                          height: 140,
                          color: Colors.grey,
                          width: 1,
                        ),
                        Column(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "We offer & deliver",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "Quality material to your",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "Door step",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                ButtonTheme(
                                  height: 25,
                                  minWidth: 50,
                                  child: RaisedButton(
                                      onPressed: () {},
                                      color: Color(0xffE0E0E0),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: Color(0xffE0E0E0),
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(50.0),
                                        ),
                                      ),
                                      child: Text(
                                        'Edit',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      )),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                ButtonTheme(
                                  height: 25,
                                  minWidth: 50,
                                  child: RaisedButton(
                                      onPressed: () {},
                                      color: Color(0xffE0E0E0),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: Color(0xffE0E0E0),
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(50.0),
                                        ),
                                      ),
                                      child: Text(
                                        'Remove',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      )),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                ButtonTheme(
                                  height: 25,
                                  minWidth: 50,
                                  child: RaisedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ProductDetailPage()),
                                        );
                                      },
                                      color: Color(0xffE0E0E0),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: Color(0xffE0E0E0),
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(50.0),
                                        ),
                                      ),
                                      child: Text(
                                        'View',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 450,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.asset('images/sheets.png'),
                        Container(
                          height: 140,
                          color: Colors.grey,
                          width: 1,
                        ),
                        Column(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "We offer & deliver",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "Quality material to your",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "Door step",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                ButtonTheme(
                                  height: 25,
                                  minWidth: 50,
                                  child: RaisedButton(
                                      onPressed: () {},
                                      color: Color(0xffE0E0E0),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: Color(0xffE0E0E0),
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(50.0),
                                        ),
                                      ),
                                      child: Text(
                                        'Edit',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      )),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                ButtonTheme(
                                  height: 25,
                                  minWidth: 50,
                                  child: RaisedButton(
                                      onPressed: () {},
                                      color: Color(0xffE0E0E0),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: Color(0xffE0E0E0),
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(50.0),
                                        ),
                                      ),
                                      child: Text(
                                        'Remove',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      )),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                ButtonTheme(
                                  height: 25,
                                  minWidth: 50,
                                  child: RaisedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ProductDetailPage()),
                                        );
                                      },
                                      color: Color(0xffE0E0E0),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: Color(0xffE0E0E0),
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(50.0),
                                        ),
                                      ),
                                      child: Text(
                                        'View',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
