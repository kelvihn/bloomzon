import 'package:flutter/material.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';

class VerifyAccount extends StatefulWidget {
  @override
  _VerifyAccountState createState() => _VerifyAccountState();
}

class _VerifyAccountState extends State<VerifyAccount> {
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
                child: Text('Verify Account',
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
      children: <Widget>[
        Text(
          'Enter the one time password (OTP) sent \nto your mail',
          style: TextStyle(
              color: Colors.blue[900],
              fontWeight: FontWeight.w600,
              fontSize: 18),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 40),
        Text('Click HERE to send again',
            style: TextStyle(color: Colors.blue[900])),
        SizedBox(height: 40),
        saveBtn()
      ],
    ));
  }

  Widget saveBtn() {
    return Container(
        margin: EdgeInsets.only(bottom: 20),
        height: 50,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.red[800],
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
            child: Text('CONTINUE',
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
              child: PinEntryTextField(
                //showFieldAsBox: true,
                fieldWidth: 50.0,
                fields: 4,
                onSubmit: (String pin) {
                  setState(() {
                    pinCode = pin;
                  }); //end showDialog()
                }, // end onSubmit
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
