import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class CreateCode extends StatefulWidget {
  @override
  _CreateCodeState createState() => _CreateCodeState();
}

class _CreateCodeState extends State<CreateCode> {
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
                Colors.white.withOpacity(.9),
                Colors.white.withOpacity(.9),
                Colors.white.withOpacity(.9),
                Colors.white.withOpacity(.9),
              ])),
          child: Column(children: <Widget>[
            firstBox(),
            SizedBox(height: 30),
            contentBox(),
            SizedBox(height: 120),
            createBtn()
          ]))
    ])));
  }

  Widget firstBox() {
    return Stack(
      children: <Widget>[
        Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 60, bottom: 25),
            height: 150,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                )),
            child: Center(
                child: Icon(Entypo.typing, size: 75, color: Colors.white))),
        Positioned(
            top: 30,
            left: 8,
            child: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.of(context).pop())),
        Positioned(
            top: 30,
            right: 8,
            child: IconButton(
                icon: Icon(AntDesign.close, color: Colors.white),
                onPressed: () => Navigator.of(context).pop()))
      ],
    );
  }

  Widget action() {
    return Row(crossAxisAlignment: CrossAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('ENTER CODE',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 16)),
          SizedBox(width: 10),
          actionBar(),
        ]);
  }

  Widget actionBar() {
    return Container(
      alignment: Alignment.centerRight,
      height: 40,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }

  Widget deacBtn(String text, Color color) {
    return Container(
        padding: EdgeInsets.all(5),
        // margin: EdgeInsets.only(left: 50),
        height: 30,
        width: 80,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
            child: Text(text,
                style: TextStyle(fontSize: 14, color: Colors.white))));
  }

  Widget contentBox() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 35, horizontal: 30),
        height: 250,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
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
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            action(),
            SizedBox(width: 25),
            Text('Description Effect',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 16)),
            SizedBox(width: 20),
            deacBtn('Shopping', Colors.red[900]),
            SizedBox(width: 20),
            deacBtn('Discount', Colors.blue[900])
          ],
        )));
  }

  Widget createBtn() {
    return Container(
        padding: EdgeInsets.all(5),
        // margin: EdgeInsets.only(left: 50),
        height: 40,
        width: 150,
        decoration: BoxDecoration(
          color: Colors.blue[900],
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
            child: Text('CREATE',
                style: TextStyle(fontSize: 14, color: Colors.white))));
  }
}
