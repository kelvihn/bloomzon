import 'package:flutter/material.dart';
import 'package:bloomzon/manufacturers/verification.dart';

class VerifyYourAccount extends StatefulWidget {
  @override
  _VerifyYourAccountState createState() => _VerifyYourAccountState();
}

class _VerifyYourAccountState extends State<VerifyYourAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: Stack(children: <Widget>[
          Positioned(top: 0, child: firstBox()),
          Positioned(top: 120, right: 0, left: 0, child: accountInfo()),
          Positioned(top: 220, right: 0, left: 0, child: billingDetailsCon())
        ]));
  }

  Widget firstBox() {
    return Stack(
      children: <Widget>[
        Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 10),
            height: 170,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                )),
            child: Center(
              child: Text(
                'Verify Your Account',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
                textAlign: TextAlign.center,
              ),
            )),
        Positioned(
            top: 30,
            left: 8,
            child: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.of(context).pop()))
      ],
    );
  }

  Widget accountInfo() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Container(
            width: 220,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
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
              child: Text("Get Verified",
                  style: TextStyle(
                      color: Colors.blue[900],
                      fontWeight: FontWeight.w600,
                      fontSize: 18)),
            )));
  }

  Widget billingDetailsCon() {
    return Container(
        height: 450,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
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
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                    Widget>[
          SizedBox(height: 30),
          Text('Company CAC:',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w600)),
          SizedBox(height: 10),
          chooseFileBox(),
          SizedBox(height: 20),
          Row(crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
            Text('RC No:', style: TextStyle(fontWeight: FontWeight.w600)),
            SizedBox(width: 8),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width * 0.65,
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
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: 0.5, color: Colors.grey)),
            )
          ]),
          SizedBox(height: 20),
          Text('Proof of Address',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w600)),
          SizedBox(height: 10),
          chooseFileBox(),
          SizedBox(height: 20),
          Text('Valid ID:',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w600)),
          SizedBox(height: 10),
          chooseFileBox(),
          SizedBox(height: 50),
          Container(alignment: Alignment.center, child: redBtn())
        ])));
  }

  Widget redBtn() {
    return GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => Verification()));
        },
        child: Container(
            margin: EdgeInsets.only(bottom: 20),
            height: 50,
            width: 120,
            decoration: BoxDecoration(
              color: Colors.red[900],
              borderRadius: BorderRadius.circular(25),
            ),
            child: Center(
                child: Text('SUBMIT',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 14)))));
  }

  Widget chooseFileBox() {
    return Container(
        height: 40,
        // width: 280,
        padding: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(width: 1, color: Colors.grey)),
        child: Row(children: <Widget>[
          Container(
              height: 40,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                  child: Text('Choose File',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600)))),
          SizedBox(width: 20),
          Text('No file chosen',
              style: TextStyle(
                color: Colors.grey,
              ))
        ]));
  }
}
