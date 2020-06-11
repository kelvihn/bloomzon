import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:bloomzon/sellers/bloomzon_product.dart';

class Bloomzon extends StatefulWidget {
  @override
  _BloomzonState createState() => _BloomzonState();
}

class _BloomzonState extends State<Bloomzon> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue[900],
              elevation: 0,
              titleSpacing: 0,
            ),
            backgroundColor: Colors.white,
            body: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                    child: Column(
                  children: <Widget>[
                    firstBox(),
                    SizedBox(height: 20),
                    gridView(),
                    SizedBox(height: 20),
                    Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.blue[900],
                        child: Center(
                            child: Text('BLOOMZON TV',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                )))),
                    SizedBox(height: 5),
                    tvBox(),
                    viewBtn()
                  ],
                )))));
  }

  Widget firstBox() {
    return Container(
        padding: EdgeInsets.only(top: 30),
        height: 100,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.blue[900],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(5),
            )),
        child: Text(
          'SHOP BLOOMZON PRODUCT',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          textAlign: TextAlign.center,
        ));
  }

  Widget tvBox() {
    return Container(
        height: 150,
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
        child: Center(child: Image.asset('images/bag.jpg', height: 80)));
  }

  Widget gridView() {
    return Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                subContainer('Baby Foods', 'images/png_food.png'),
                SizedBox(width: 20),
                subContainer('Fashion', 'images/png_shirt.png')
              ]),
          SizedBox(height: 20),
          Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                subContainer('Hair Creams', 'images/png_bag.png'),
                SizedBox(width: 20),
                subContainer('Food Stuffs', 'images/png_shoe.png')
              ])
        ]));
  }

  Widget viewBtn() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
        height: 50,
        width: 150,
        decoration: BoxDecoration(
          color: Colors.red[900],
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
            child: Text('View Page',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 16))));
  }

  Widget subContainer(String text, String image) {
    return Container(
        height: 130,
        child: Stack(children: <Widget>[
          Container(
            height: 110,
            width: 150,
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
          Positioned(
              bottom: 0,
              right: 0,
              child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => BloomzonProduct()));
                  },
                  child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.red[900],
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                          child: Text(text,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14))))))
        ]));
  }
}
