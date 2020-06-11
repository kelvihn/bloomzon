import 'package:flutter/material.dart';

class FactoryView extends StatefulWidget {
  @override
  _FactoryViewState createState() => _FactoryViewState();
}

class _FactoryViewState extends State<FactoryView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.grey[200],
            body: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                  firstBox(),
                  imageContainer(),
                  currencyBox(),
                  descBox(),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[redBtn()])
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
                color: Colors.red[900],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                )),
            child: Center(
              child: Text(
                'Your Factory View',
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

  Widget imageContainer() {
    return Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Center(
            child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            imageBox('images/png_bag.png'),
            imageBox('images/png_bag.png'),
          ],
        )));
  }

  Widget currencyBox() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Amount', style: TextStyle(fontWeight: FontWeight.w600)),
              SizedBox(height: 10),
              chooseFileBox()
            ]));
  }

  Widget redBtn() {
    return GestureDetector(
        onTap: () {},
        child: Container(
            height: 35,
            width: 120,
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.red[900]),
            child: Center(
                child: Text('SAVE',
                    style: TextStyle(color: Colors.white, fontSize: 14)))));
  }

  Widget descBox() {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
              Text('Description',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600)),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width * 0.85,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1, color: Colors.black45),
                ),
              )
            ])));
  }

  Widget imageBox(String image) {
    return Container(
      height: 110,
      width: 150,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0, // soften the shadow
              spreadRadius: 2.0, //extend the shadow
              offset: Offset(
                0.0, // Move to right 10  horizontally
                0.0, // Move to bottom 10 Vertically
              ),
            )
          ],
          image: DecorationImage(
              image: AssetImage('images/bb.jpg'), fit: BoxFit.cover),
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.0)),
    );
  }

  Widget chooseFileBox() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Container(
          height: 40,
          width: 250,
          padding: EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 1, color: Colors.black54)),
          child: Row(children: <Widget>[
            Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(width: 1, color: Colors.black54)),
                child: Center(
                    child: Text('Choose Image',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w600)))),
            SizedBox(width: 20),
            Text('',
                style: TextStyle(
                  color: Colors.grey,
                ))
          ])),
    );
  }
}
