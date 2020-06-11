import 'package:flutter/material.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';

class AccountType extends StatefulWidget {
  @override
  _AccountTypeState createState() => _AccountTypeState();
}

class _AccountTypeState extends State<AccountType> {
  String pinCode;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.white,
        body: Stack(children: <Widget>[
          Positioned(top: 0, child: blueContainer()),
          Positioned(top: 225, left: 0, right: 0, child: accountInfo()),
          Positioned(
              top: 50,
              left: 10,
              child: IconButton(
                icon: Icon(Icons.arrow_back, size: 32, color: Colors.white),
                onPressed: () => Navigator.pop(context),
              )),
          Positioned(bottom: 10, left: 0, right: 0, child: text()),
        ]));
  }

  Widget blueContainer() {
    return ClipPath(
        clipper: ArcClipper(),
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: 300,
            color: Colors.blue[900],
            child: Center(
                child: Text('User Account Type',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold)))));
  }

  Widget text() {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[saveBtn()],
    ));
  }

  Widget saveBtn() {
    return Container(
        margin: EdgeInsets.only(bottom: 20),
        height: 50,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.red[900],
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
            child: Text('UPGRADE TO PREMIUM',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 16))));
  }

  Widget accountInfo() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Container(
            width: 60,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
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
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.account_circle, size: 65, color: Colors.blue[900]),
                  SizedBox(height: 10),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Your Package:',
                            style: TextStyle(
                                color: Colors.blue[900],
                                fontSize: 22,
                                fontWeight: FontWeight.w300)),
                        Text('BASIC',
                            style: TextStyle(
                                color: Colors.blue[900],
                                fontSize: 22,
                                fontWeight: FontWeight.bold))
                      ])
                ],
              ),
            )));
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
