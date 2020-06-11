import 'package:flutter/material.dart';
import 'package:bloomzon/manufacturers/edit_product.dart';
import 'package:bloomzon/manufacturers/add_product.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.grey[200],
            body: SingleChildScrollView(
                child: Column(children: <Widget>[
              firstBox(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[redBtn()],
              ),
              itemBox('images/watermachine1.jpg'),
              itemBox('images/watermachine2.jpg'),
              itemBox('images/watermachine3.jpg'),
              itemBox('images/watermachine1.jpg'),
            ]))));
  }

  Widget firstBox() {
    return Stack(
      children: <Widget>[
        Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 60),
            height: 120,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                )),
            child: Center(
              child: Text(
                'Your Products',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
                textAlign: TextAlign.center,
              ),
            )),
        Positioned(
            top: 30,
            left: 8,
            child: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.of(context).pop())),
      ],
    );
  }

  Widget redBtn() {
    return GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => AddProduct()));
        },
        child: Container(
            height: 35,
            width: 120,
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.red[900]),
            child: Center(
                child: Text('ADD PRODUCT',
                    style: TextStyle(color: Colors.white, fontSize: 14)))));
  }

  Widget itemBox(String image) {
    return Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.symmetric(vertical: 10),
        height: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 5.0, // soften the shadow
              spreadRadius: 0.5, //extend the shadow
              offset: Offset(
                0.0, // Move to right 10  horizontally
                0.0, // Move to bottom 10 Vertically
              ),
            )
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(image, height: 60),
            VerticalDivider(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('We supply machine for water',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.w600)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    greyBtn('Edit'),
                    greyBtn('Remove'),
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (_) => ViewProduct()));
                        },
                        child: greyBtn('View')),
                  ],
                )
              ],
            )
          ],
        ));
  }

  Widget greyBtn(String text) {
    return Container(
        padding: EdgeInsets.all(5),
        height: 25,
        width: 60,
        margin: EdgeInsets.symmetric(horizontal: 3),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: Colors.grey[300]),
        child: Center(
            child: Text(text,
                style: TextStyle(color: Colors.black, fontSize: 12))));
  }
}
