import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ShirtSingle extends StatefulWidget {
  final String image;
  final String name;

  const ShirtSingle({Key key, this.image, this.name}) : super(key: key);
  @override
  _ShirtSingleState createState() => _ShirtSingleState();
}

class _ShirtSingleState extends State<ShirtSingle> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              iconTheme: IconThemeData(color: Colors.black),
              backgroundColor: Colors.white,
              title: Text('Bloomzon T-shirts',
                  style: TextStyle(
                      fontWeight: FontWeight.w700, color: Colors.black)),
              centerTitle: true,
              elevation: 1,
            ),
            body: SingleChildScrollView(
                child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Seller ID:',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600)),
                      SizedBox(width: 20),
                      Text('Ose244',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600)),
                    ],
                  ),
                  SizedBox(height: 40),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            pickerCon(Icons.arrow_back),
                            Image.asset(widget.image, height: 120),
                            pickerCon(Icons.arrow_forward)
                          ],
                        ),
                      )),
                  SizedBox(height: 30),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            width: 145,
                            alignment: Alignment.center,
                            child: RaisedButton(
                                color: Colors.blue[900],
                                onPressed: () {},
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text('Add to cart',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12)),
                                      SizedBox(width: 3),
                                      Icon(Foundation.shopping_cart,
                                          color: Colors.white)
                                    ]))),
                        SizedBox(width: 10),
                        Container(
                            width: 145,
                            alignment: Alignment.center,
                            child: RaisedButton(
                                color: Colors.blue[900],
                                onPressed: () {},
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text('Add to favorites',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12)),
                                      SizedBox(width: 3),
                                      Icon(AntDesign.heart, color: Colors.white)
                                    ]))),
                      ]),
                  /*
                  RatingBar(
                    initialRating: 5,
                    itemSize: 22,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    //itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.blue[900],
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  */
                  SizedBox(height: 20),
                  Text(widget.name,
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w600)),
                  SizedBox(height: 20),
                  Text('\$13',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue[900],
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 20),
                  descriptionBox(),
                ]))));
  }

  Widget descriptionBox() {
    return Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('DESCRIPTION',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                )),
            SizedBox(height: 20),
            Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor',
                style: TextStyle()),
          ],
        ));
  }

  Widget reviewBox(String image, String message) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        height: 100,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
        ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
              ClipOval(
                child: Image.asset(
                  image,
                  height: 50,
                ),
              ),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text('Ose', style: TextStyle(fontWeight: FontWeight.w600)),
                    Container(
                      width: 170,
                      child: Text(message,
                          style: TextStyle(fontWeight: FontWeight.w600)),
                    )
                  ]),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    RatingBar(
                      initialRating: 3,
                      itemSize: 12,
                      minRating: 0,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      //itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.blue[900],
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    SizedBox(height: 5),
                    Text('4/25/2020',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.blue[900],
                        )),
                  ])
            ])));
  }

  Widget pickerCon(IconData icon) {
    return Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
            color: Colors.blue[900], borderRadius: BorderRadius.circular(25)),
        child: Center(
          child: Icon(icon, size: 14, color: Colors.white),
        ));
  }
}
