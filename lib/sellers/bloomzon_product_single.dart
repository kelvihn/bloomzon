import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class BloomzonProductSingle extends StatefulWidget {
  @override
  _BloomzonProductSingleState createState() => _BloomzonProductSingleState();
}

class _BloomzonProductSingleState extends State<BloomzonProductSingle> {
  List<String> _locations = ['Price', 'Size', 'Color']; // Option 2
  String _selectedLocation;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue[900],
              elevation: 0,
              titleSpacing: 0,
            ),
            backgroundColor: Colors.blue[900],
            body: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    firstBox(),
                    SizedBox(height: 20),
                    Container(
                        alignment: Alignment.center,
                        child: Center(
                            child: Image.asset('images/sh2.png', height: 200))),
                    SizedBox(height: 20),
                    productType(),
                  ],
                )))));
  }

  Widget firstBox() {
    return Container(
        padding: EdgeInsets.only(top: 30),
        height: 80,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.blue[900],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(5),
            )),
        child: Text(
          'BLOOMZON T-SHIRTS',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          textAlign: TextAlign.center,
        ));
  }

  Widget subContainer(String text, String image) {
    return Container(
        height: 140,
        width: 140,
        child: Stack(children: <Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Container(
              height: 130,
              width: 140,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5.0, // soften the shadow
                  spreadRadius: 0.5, //extend the shadow
                  offset: Offset(
                    0.0, // Move to right 10  horizontally
                    0.0, // Move to bottom 10 Vertically
                  ),
                )
              ], color: Colors.white, borderRadius: BorderRadius.circular(5.0)),
              child: Center(child: Image.asset(image, height: 60)),
            ),
          ]),
          Positioned(left: 0, right: 0, top: 105, child: btnRow()),
          Positioned(
              //  left: 0,
              right: 25,
              top: 5,
              child: Text('N2000',
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w600,
                      fontSize: 12)))
        ]));
  }

  Widget btnRow() {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          addToCartBtn(),
          SizedBox(width: 3),
          addToFav(),
          SizedBox(width: 3),
          review()
        ]);
  }

  Widget addToFav() {
    return Container(
        height: 30,
        width: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: Colors.red[900]),
        child: Center(
            child: Icon(AntDesign.heart, color: Colors.white, size: 16)));
  }

  Widget review() {
    return Container(
        height: 30,
        width: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: Colors.red[900]),
        child: Center(
            child: Text('Review',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ))));
  }

  Widget addToCartBtn() {
    return Container(
        height: 30,
        width: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: Colors.red[900]),
        child: Center(
            child:
                Icon(AntDesign.shoppingcart, color: Colors.white, size: 18)));
  }

  Widget productType() {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 180,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('Price',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600)),
                Text('-',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w300)),
                Text('N2000',
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.w600))
              ]),
          RaisedButton(
              onPressed: () {},
              color: Colors.red[900],
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Add to favorites',
                        style: TextStyle(
                          color: Colors.white,
                        )),
                    SizedBox(width: 5),
                    Icon(AntDesign.heart, size: 18, color: Colors.white)
                  ])),
          RaisedButton(
              onPressed: () {},
              color: Colors.red[900],
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Add to cart',
                        style: TextStyle(
                          color: Colors.white,
                        )),
                    SizedBox(width: 5),
                    Icon(AntDesign.shoppingcart, size: 18, color: Colors.white)
                  ]))
        ],
      )),
    );
  }
}
