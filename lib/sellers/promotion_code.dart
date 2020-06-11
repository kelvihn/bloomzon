import 'package:flutter/material.dart';
import 'package:bloomzon/sellers/create_new_code.dart';

class PromotionCode extends StatefulWidget {
  @override
  _PromotionCodeState createState() => _PromotionCodeState();
}

class _PromotionCodeState extends State<PromotionCode> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Stack(children: <Widget>[
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/bg.jpg'), fit: BoxFit.cover)),
      ),
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [
              0.1,
              0.4,
              0.7,
              0.9
            ],
                colors: [
              Colors.white.withOpacity(.7),
              Colors.white.withOpacity(.7),
              Colors.white.withOpacity(.7),
              Colors.white.withOpacity(.7),
            ])),
        child: Column(children: <Widget>[
          blueContainer(),
          SizedBox(height: 20),
          promoBox('CBD001'),
          promoBox('CBD001')
        ]),
      ),
      Positioned(
        top: 25,
        child: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop()),
      ),
    ])));
  }

  Widget blueContainer() {
    return ClipPath(
        clipper: ArcClipper(),
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: 150,
            color: Colors.blue[900],
            child: Center(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                  Text('Promotion Code',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 15),
                  largeBtn()
                ]))));
  }

  Widget largeBtn() {
    return GestureDetector(
        onTap: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => CreateCode())),
        child: Container(
            padding: EdgeInsets.all(5),
            // margin: EdgeInsets.only(left: 50),
            height: 35,
            width: 120,
            decoration: BoxDecoration(
                // color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.white, width: 2)),
            child: Center(
                child: Text('Create new code',
                    style: TextStyle(fontSize: 12, color: Colors.white)))));
  }

  Widget deacBtn() {
    return Container(
        padding: EdgeInsets.all(5),
        // margin: EdgeInsets.only(left: 50),
        height: 30,
        width: 80,
        decoration: BoxDecoration(
            color: Colors.red[900],
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.white, width: 2)),
        child: Center(
            child: Text('Deactivate',
                style: TextStyle(fontSize: 12, color: Colors.white))));
  }

  Widget promoBox(String color) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 150,
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
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
              Container(
                  height: 80,
                  width: 120,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey, width: 1)),
                  child: Center(
                      child: Text(color,
                          style: TextStyle(
                            fontSize: 18,
                          )))),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Description',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 16)),
                    SizedBox(height: 4),
                    Text('-Free shipping',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: 14)),
                    SizedBox(height: 4),
                    Text('-1000 Discount',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: 14)),
                    SizedBox(height: 4),
                    deacBtn()
                  ])
            ]));
  }
}

class ArcClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 50);

    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstPoint = Offset(size.width / 2, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstPoint.dx, firstPoint.dy);

    var secondControlPoint = Offset(size.width - (size.width / 4), size.height);
    var secondPoint = Offset(size.width, size.height - 50);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondPoint.dx, secondPoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
