import 'package:bloomzon/groceries//products-detail.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  String currency;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text(
          'FOOD MENU',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: new IconThemeData(color: Colors.white),
        backgroundColor: Color(0xff02499B),
      ),
      backgroundColor: Color(0xffF2F2F2),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 85,
                  width: 190,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(25.0, 16.0, 30.0, 16.0),
                    child: DropdownButtonHideUnderline(
                      child: new DropdownButtonFormField<String>(
                        iconEnabledColor: Color(0xff02499B),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                            const Radius.circular(5.0),
                          )),
                          hintText: 'Filter By',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 13,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          labelStyle: TextStyle(
                            color: Color(0xff02499B),
                          ),
                          focusColor: Color(0xff02499B),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(5.0),
                              ),
                              borderSide: BorderSide(
                                color: Colors.grey,
                              )),
                        ),
                        value: currency,
                        validator: (String newValue) {
                          if (newValue == null) {
                            return 'Please enter currency';
                          }
                          return null;
                        },
                        hint: Text(
                          '',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff02499B),
                          ),
                        ),
                        style: TextStyle(
                          color: Color(0xff02499B),
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            currency = newValue;
                          });
                        },
                        items: <String>[
                          'Price',
                          'Menu',
                          'Location',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(
                              value,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProductDetailPage()),
                    );
                  },
                  child: Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                            left: 20, top: 20, right: 0, bottom: 0),
                        height: 150,
                        width: 150,
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'N2000',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.greenAccent),
                                  ),
                                )
                              ],
                            ),
                            Image.asset(
                              'images/food1.png',
                              height: 70,
                              width: 80,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(15.0, 140.0, 0.0, 0.0),
                        child: Row(
                          children: <Widget>[
                            ButtonTheme(
                              height: 30,
                              minWidth: 20,
                              child: RaisedButton(
                                color: Color(0xffAF2E1D),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    style: BorderStyle.solid,
                                    color: Color(0xffAF2E1D),
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5.0),
                                  ),
                                ),
                                child: Icon(
                                  Icons.shopping_cart,
                                  size: 15,
                                ),
                                textColor: Colors.white,
                                highlightElevation: 8.0,
                                splashColor: Colors.white,
                                elevation: 2.0,
                                onPressed: () {},
                              ),
                            ),
                            ButtonTheme(
                              height: 30,
                              minWidth: 20,
                              child: RaisedButton(
                                color: Color(0xffAF2E1D),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    style: BorderStyle.solid,
                                    color: Color(0xffAF2E1D),
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5.0),
                                  ),
                                ),
                                child: Icon(
                                  Icons.favorite,
                                  size: 10,
                                ),
                                textColor: Colors.white,
                                highlightElevation: 8.0,
                                splashColor: Colors.white,
                                elevation: 2.0,
                                onPressed: () {},
                              ),
                            ),
                            ButtonTheme(
                              height: 30,
                              minWidth: 20,
                              child: RaisedButton(
                                color: Color(0xffAF2E1D),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    style: BorderStyle.solid,
                                    color: Color(0xffAF2E1D),
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5.0),
                                  ),
                                ),
                                child: Text(
                                  "Review",
                                  style: TextStyle(
                                    fontSize: 10,
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
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProductDetailPage()),
                    );
                  },
                  child: Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                            left: 20, top: 20, right: 0, bottom: 0),
                        height: 150,
                        width: 150,
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'N2000',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.greenAccent),
                                  ),
                                )
                              ],
                            ),
                            Image.asset(
                              'images/food1.png',
                              height: 70,
                              width: 80,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(15.0, 140.0, 0.0, 0.0),
                        child: Row(
                          children: <Widget>[
                            ButtonTheme(
                              height: 30,
                              minWidth: 20,
                              child: RaisedButton(
                                color: Color(0xffAF2E1D),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    style: BorderStyle.solid,
                                    color: Color(0xffAF2E1D),
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5.0),
                                  ),
                                ),
                                child: Icon(
                                  Icons.shopping_cart,
                                  size: 15,
                                ),
                                textColor: Colors.white,
                                highlightElevation: 8.0,
                                splashColor: Colors.white,
                                elevation: 2.0,
                                onPressed: () {},
                              ),
                            ),
                            ButtonTheme(
                              height: 30,
                              minWidth: 20,
                              child: RaisedButton(
                                color: Color(0xffAF2E1D),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    style: BorderStyle.solid,
                                    color: Color(0xffAF2E1D),
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5.0),
                                  ),
                                ),
                                child: Icon(
                                  Icons.favorite,
                                  size: 10,
                                ),
                                textColor: Colors.white,
                                highlightElevation: 8.0,
                                splashColor: Colors.white,
                                elevation: 2.0,
                                onPressed: () {},
                              ),
                            ),
                            ButtonTheme(
                              height: 30,
                              minWidth: 20,
                              child: RaisedButton(
                                color: Color(0xffAF2E1D),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    style: BorderStyle.solid,
                                    color: Color(0xffAF2E1D),
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5.0),
                                  ),
                                ),
                                child: Text(
                                  "Review",
                                  style: TextStyle(
                                    fontSize: 10,
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProductDetailPage()),
                    );
                  },
                  child: Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                            left: 20, top: 20, right: 0, bottom: 0),
                        height: 150,
                        width: 150,
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'N2000',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.greenAccent),
                                  ),
                                )
                              ],
                            ),
                            Image.asset(
                              'images/food1.png',
                              height: 70,
                              width: 80,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(15.0, 140.0, 0.0, 0.0),
                        child: Row(
                          children: <Widget>[
                            ButtonTheme(
                              height: 30,
                              minWidth: 20,
                              child: RaisedButton(
                                color: Color(0xffAF2E1D),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    style: BorderStyle.solid,
                                    color: Color(0xffAF2E1D),
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5.0),
                                  ),
                                ),
                                child: Icon(
                                  Icons.shopping_cart,
                                  size: 15,
                                ),
                                textColor: Colors.white,
                                highlightElevation: 8.0,
                                splashColor: Colors.white,
                                elevation: 2.0,
                                onPressed: () {},
                              ),
                            ),
                            ButtonTheme(
                              height: 30,
                              minWidth: 20,
                              child: RaisedButton(
                                color: Color(0xffAF2E1D),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    style: BorderStyle.solid,
                                    color: Color(0xffAF2E1D),
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5.0),
                                  ),
                                ),
                                child: Icon(
                                  Icons.favorite,
                                  size: 10,
                                ),
                                textColor: Colors.white,
                                highlightElevation: 8.0,
                                splashColor: Colors.white,
                                elevation: 2.0,
                                onPressed: () {},
                              ),
                            ),
                            ButtonTheme(
                              height: 30,
                              minWidth: 20,
                              child: RaisedButton(
                                color: Color(0xffAF2E1D),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    style: BorderStyle.solid,
                                    color: Color(0xffAF2E1D),
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5.0),
                                  ),
                                ),
                                child: Text(
                                  "Review",
                                  style: TextStyle(
                                    fontSize: 10,
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
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProductDetailPage()),
                    );
                  },
                  child: Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                            left: 20, top: 20, right: 0, bottom: 0),
                        height: 150,
                        width: 150,
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'N2000',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.greenAccent),
                                  ),
                                )
                              ],
                            ),
                            Image.asset(
                              'images/food1.png',
                              height: 70,
                              width: 80,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(15.0, 140.0, 0.0, 0.0),
                        child: Row(
                          children: <Widget>[
                            ButtonTheme(
                              height: 30,
                              minWidth: 20,
                              child: RaisedButton(
                                color: Color(0xffAF2E1D),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    style: BorderStyle.solid,
                                    color: Color(0xffAF2E1D),
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5.0),
                                  ),
                                ),
                                child: Icon(
                                  Icons.shopping_cart,
                                  size: 15,
                                ),
                                textColor: Colors.white,
                                highlightElevation: 8.0,
                                splashColor: Colors.white,
                                elevation: 2.0,
                                onPressed: () {},
                              ),
                            ),
                            ButtonTheme(
                              height: 30,
                              minWidth: 20,
                              child: RaisedButton(
                                color: Color(0xffAF2E1D),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    style: BorderStyle.solid,
                                    color: Color(0xffAF2E1D),
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5.0),
                                  ),
                                ),
                                child: Icon(
                                  Icons.favorite,
                                  size: 10,
                                ),
                                textColor: Colors.white,
                                highlightElevation: 8.0,
                                splashColor: Colors.white,
                                elevation: 2.0,
                                onPressed: () {},
                              ),
                            ),
                            ButtonTheme(
                              height: 30,
                              minWidth: 20,
                              child: RaisedButton(
                                color: Color(0xffAF2E1D),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    style: BorderStyle.solid,
                                    color: Color(0xffAF2E1D),
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5.0),
                                  ),
                                ),
                                child: Text(
                                  "Review",
                                  style: TextStyle(
                                    fontSize: 10,
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProductDetailPage()),
                    );
                  },
                  child: Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                            left: 20, top: 20, right: 0, bottom: 0),
                        height: 150,
                        width: 150,
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'N2000',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.greenAccent),
                                  ),
                                )
                              ],
                            ),
                            Image.asset(
                              'images/food1.png',
                              height: 70,
                              width: 80,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(15.0, 140.0, 0.0, 0.0),
                        child: Row(
                          children: <Widget>[
                            ButtonTheme(
                              height: 30,
                              minWidth: 20,
                              child: RaisedButton(
                                color: Color(0xffAF2E1D),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    style: BorderStyle.solid,
                                    color: Color(0xffAF2E1D),
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5.0),
                                  ),
                                ),
                                child: Icon(
                                  Icons.shopping_cart,
                                  size: 15,
                                ),
                                textColor: Colors.white,
                                highlightElevation: 8.0,
                                splashColor: Colors.white,
                                elevation: 2.0,
                                onPressed: () {},
                              ),
                            ),
                            ButtonTheme(
                              height: 30,
                              minWidth: 20,
                              child: RaisedButton(
                                color: Color(0xffAF2E1D),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    style: BorderStyle.solid,
                                    color: Color(0xffAF2E1D),
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5.0),
                                  ),
                                ),
                                child: Icon(
                                  Icons.favorite,
                                  size: 10,
                                ),
                                textColor: Colors.white,
                                highlightElevation: 8.0,
                                splashColor: Colors.white,
                                elevation: 2.0,
                                onPressed: () {},
                              ),
                            ),
                            ButtonTheme(
                              height: 30,
                              minWidth: 20,
                              child: RaisedButton(
                                color: Color(0xffAF2E1D),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    style: BorderStyle.solid,
                                    color: Color(0xffAF2E1D),
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5.0),
                                  ),
                                ),
                                child: Text(
                                  "Review",
                                  style: TextStyle(
                                    fontSize: 10,
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
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProductDetailPage()),
                    );
                  },
                  child: Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                            left: 20, top: 20, right: 0, bottom: 0),
                        height: 150,
                        width: 150,
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'N2000',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.greenAccent),
                                  ),
                                )
                              ],
                            ),
                            Image.asset(
                              'images/food1.png',
                              height: 70,
                              width: 80,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(15.0, 140.0, 0.0, 0.0),
                        child: Row(
                          children: <Widget>[
                            ButtonTheme(
                              height: 30,
                              minWidth: 20,
                              child: RaisedButton(
                                color: Color(0xffAF2E1D),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    style: BorderStyle.solid,
                                    color: Color(0xffAF2E1D),
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5.0),
                                  ),
                                ),
                                child: Icon(
                                  Icons.shopping_cart,
                                  size: 15,
                                ),
                                textColor: Colors.white,
                                highlightElevation: 8.0,
                                splashColor: Colors.white,
                                elevation: 2.0,
                                onPressed: () {},
                              ),
                            ),
                            ButtonTheme(
                              height: 30,
                              minWidth: 20,
                              child: RaisedButton(
                                color: Color(0xffAF2E1D),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    style: BorderStyle.solid,
                                    color: Color(0xffAF2E1D),
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5.0),
                                  ),
                                ),
                                child: Icon(
                                  Icons.favorite,
                                  size: 10,
                                ),
                                textColor: Colors.white,
                                highlightElevation: 8.0,
                                splashColor: Colors.white,
                                elevation: 2.0,
                                onPressed: () {},
                              ),
                            ),
                            ButtonTheme(
                              height: 30,
                              minWidth: 20,
                              child: RaisedButton(
                                color: Color(0xffAF2E1D),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    style: BorderStyle.solid,
                                    color: Color(0xffAF2E1D),
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5.0),
                                  ),
                                ),
                                child: Text(
                                  "Review",
                                  style: TextStyle(
                                    fontSize: 10,
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
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
