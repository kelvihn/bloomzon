import 'package:flutter/material.dart';
import 'package:bloomzon/sellers/map_screen.dart';

class Tracking extends StatefulWidget {
  @override
  _TrackingState createState() => _TrackingState();
}

class _TrackingState extends State<Tracking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF2B2950),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          firstBox(),
          SizedBox(height: 20),
          ratingBox(),
          SizedBox(height: 30),
          largeBtn()
        ])));
  }

  Widget startBtn() {
    return Container(
        width: 150,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.white, width: 1)),
        child: Center(
            child: Text('START',
                style: TextStyle(
                  color: Colors.white,
                ))));
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
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                )),
            child: Center(
              child: Text(
                'Live Tracking',
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

  Widget ratingBox() {
    return Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.symmetric(vertical: 10),
        height: 450,
        decoration: BoxDecoration(
            color: Color(0xFF4B496A), borderRadius: BorderRadius.circular(5)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Hero(
                tag: 'anim',
                child:
                    Icon(Icons.account_circle, size: 85, color: Colors.white)),
            SizedBox(width: 25),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Text('Rider:',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16)),
              SizedBox(width: 5),
              Text('Paul219',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w300))
            ]),
            SizedBox(width: 15),
            Divider(),
            SizedBox(width: 15),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Text('Shopper ID:',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16)),
              SizedBox(width: 5),
              Text('4218AB',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w300))
            ]),
            SizedBox(width: 25),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Text('Package Date:',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16)),
              SizedBox(width: 5),
              Text('03-03-20',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w300))
            ]),
            SizedBox(width: 15),
            Divider(),
            SizedBox(width: 15),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Text('Current Location:',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16)),
              SizedBox(width: 5),
              Text('Lagos',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w300))
            ]),
            SizedBox(width: 35),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Text('Rider Distance:',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 16)),
              SizedBox(width: 5),
              Text('100km Away',
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.w300))
            ])
          ],
        ));
  }

  Widget largeBtn() {
    return GestureDetector(
        onTap: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => MapScreen())),
        child: Container(
            padding: EdgeInsets.all(5),
            // margin: EdgeInsets.only(left: 50),
            height: 45,
            width: 150,
            decoration: BoxDecoration(
                //color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.white, width: 2)),
            child: Center(
                child: Text('LIVE TRACKING',
                    style: TextStyle(fontSize: 12, color: Colors.white)))));
  }
}
