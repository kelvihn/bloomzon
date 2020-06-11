import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:bloomzon/sellers/notification_detail.dart';

class NotificationsPage extends StatefulWidget {
  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
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
        child:
            ListView(padding: EdgeInsets.only(bottom: 10), children: <Widget>[
          firstBox(),
          SizedBox(height: 20),
          showAll(),
          SizedBox(height: 20),
          messageBox('Admin', 'Your request has been treated'),
          SizedBox(height: 20),
          messageBox('Ose214', 'We are currently packing your order'),
          SizedBox(height: 20),
          messageBox('Admin', 'Your request has been treated'),
          SizedBox(height: 20),
          messageBox('Ose214', 'We are currently packing your order')
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

  Widget messageBox(String name, String message) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => NotificationDetail()));
        },
        child: Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.symmetric(horizontal: 10),
            height: 120,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                //borderRadius: BorderRadius.circular(5),
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
                border:
                    Border(left: BorderSide(width: 3, color: Colors.red[900]))),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(name, style: TextStyle(fontWeight: FontWeight.w600)),
                      Padding(padding: EdgeInsets.all(5)),
                      ClipOval(
                        child: Image.asset(
                          'images/sophia.jpg',
                          height: 60,
                        ),
                      ),
                    ],
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            width: 150,
                            child: Text(message,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500))),
                        SizedBox(height: 8),
                        Text('8.07 am')
                      ]),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text('03/04/2020',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.grey)),
                        Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              smallBtn('View'),
                              SizedBox(width: 8),
                              smallBtn('Reply')
                            ])
                      ])
                ])));
  }

  Widget smallBtn(String text) {
    return Container(
        // margin: EdgeInsets.only(left: 50),
        height: 18,
        width: 35,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.blue[900], width: 2)),
        child: Center(
            child: Text(text,
                style: TextStyle(fontSize: 10, color: Colors.blue[900]))));
  }

  Widget showAll() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('Show all',
                style: TextStyle(
                    color: Colors.black54, fontWeight: FontWeight.w600)),
            Text('Mark all as read',
                style: TextStyle(
                    color: Colors.black54, fontWeight: FontWeight.w600)),
          ],
        ));
  }

  Widget firstBox() {
    return Stack(
      children: <Widget>[
        Container(
          height: 120,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5),
              ),
              image: DecorationImage(
                  image: AssetImage('images/08.png'), fit: BoxFit.cover)),
        ),
        Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 60),
            height: 120,
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
                      Colors.blue[900].withOpacity(.9),
                      Colors.blue[900].withOpacity(.9),
                      Colors.blue[900].withOpacity(.9),
                      Colors.blue[900].withOpacity(.9),
                    ]),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                )),
            child: Center(
              child: Text(
                'NOTIFICATIONS',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
                textAlign: TextAlign.center,
              ),
            )),
      ],
    );
  }
}
