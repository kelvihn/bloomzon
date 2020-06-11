import 'package:bloomzon/Initial-pages/shirt-single.dart';
import 'package:bloomzon/buyers/products-detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

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
          'PRODUCTS',
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
                          'Location',
                          'Sellers',
                          'Brand',
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
            GridView.count(crossAxisCount: 2, shrinkWrap: true, children: [
              recommendedBox('images/shirt.png', 'Tee'),
              recommendedBox('images/shirt.png', 'Tee'),
              recommendedBox('images/shirt.png', 'Tee'),
              recommendedBox('images/shirt.png', 'Tee'),
              recommendedBox('images/shirt.png', 'Tee'),
              recommendedBox('images/shirt.png', 'Tee'),
            ]),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  Widget recommendedBox(String image, String text) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ShirtSingle(image: image, name: text)));
        },
        child: Stack(children: <Widget>[
          Container(
              height: 150,
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
              width: MediaQuery.of(context).size.width * 0.45,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 5.0, // soften the shadow
                  spreadRadius: 0.5, //extend the shadow
                  offset: Offset(
                    0.0, // Move to right 10  horizontally
                    0.0, // Move to bottom 10 Vertically
                  ),
                )
              ], borderRadius: BorderRadius.circular(5), color: Colors.white)),
          Positioned(
              right: 52,
              top: 25,
              child: smallIconBox(AntDesign.heart, Colors.red)),
          Positioned(
              right: 15,
              top: 25,
              child: smallIconBox(AntDesign.shoppingcart, Colors.blue[900])),
          Positioned(
              left: 10,
              top: 30,
              child: Text('\$200',
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold))),
          Positioned(
              top: 50,
              bottom: 50,
              left: 50,
              right: 50,
              child: Image.asset(image, width: 70)),
          Positioned(
              bottom: 0,
              child: itemDescriptionBox(
                  MediaQuery.of(context).size.width * 0.45, text))
        ]));
  }

  Widget itemDescriptionBox(double width, String text) {
    return Container(
        width: width,
        padding: EdgeInsets.symmetric(vertical: 3, horizontal: 3),
        margin: EdgeInsets.symmetric(horizontal: 5),
        height: 50,
        decoration: BoxDecoration(
            color: Colors.blue[900].withOpacity(.9),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5))),
        child: Text(text, style: TextStyle(color: Colors.white, fontSize: 12)));
  }

  Widget smallIconBox(IconData icon, Color color) {
    return Container(
        alignment: Alignment.center,
        height: 30,
        width: 30,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 5.0, // soften the shadow
            spreadRadius: 0.5, //extend the shadow
            offset: Offset(
              0.0, // Move to right 10  horizontally
              0.0, // Move to bottom 10 Vertically
            ),
          )
        ], color: Colors.white, borderRadius: BorderRadius.circular(25)),
        child: Icon(icon, color: color, size: 15));
  }
}
