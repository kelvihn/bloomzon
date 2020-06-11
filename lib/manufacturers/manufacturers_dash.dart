import 'package:flutter/cupertino.dart';
//import 'package:flutter_collapse/flutter_collapse.dart';
import 'package:bloomzon/manufacturers/sales.dart';
import 'package:bloomzon/manufacturers/manufacturers_order_details.dart';
import 'package:bloomzon/manufacturers/notifications.dart';
import 'package:bloomzon/manufacturers/manufacturers_profile.dart';
import 'package:bloomzon/manufacturers/profile.dart';
import 'package:bloomzon/manufacturers/messages.dart';
import 'package:bloomzon/manufacturers/products.dart';
import 'package:bloomzon/manufacturers/verify_your_account.dart';
import 'package:bloomzon/manufacturers/contact_admin_one.dart';
import 'package:bloomzon/manufacturers/account_settings.dart';
import 'package:bloomzon/manufacturers/wallet_account.dart';
import 'package:bloomzon/manufacturers/factory_view.dart';
import 'package:bloomzon/manufacturers/advert.dart';
import 'package:bloomzon/manufacturers/new_advert.dart';
import 'package:bloomzon/manufacturers/subscription.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class ManufacturerDashBoard extends StatefulWidget {
  @override
  _ManufacturerDashBoardState createState() => _ManufacturerDashBoardState();
}

class _ManufacturerDashBoardState extends State<ManufacturerDashBoard> {
  var _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            key: _scaffoldKey,
            drawer: Padding(
              padding: EdgeInsets.only(top: 60, left: 30, bottom: 30),
              child: Drawer(
                child: ListView(
                  children: <Widget>[
                    Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                            icon:
                                Icon(AntDesign.close, color: Colors.blue[900]),
                            onPressed: () => Navigator.of(context).pop())),
                    ListTile(
                        leading: Icon(Icons.account_circle,
                            color: Colors.blue[900], size: 30.0),
                        title: Text(
                          'PROFILE',
                          style: TextStyle(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0),
                        ),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => ManufacturersProfile()));
                        }),
                    ListTile(
                        leading: Icon(Octicons.book,
                            color: Colors.blue[900], size: 30.0),
                        title: Text(
                          'ORDER REQUEST',
                          style: TextStyle(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0),
                        ),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => ManufacturersOrderDetails()));
                        }),
                    ListTile(
                        leading: Icon(Icons.notifications,
                            color: Colors.blue[900], size: 30.0),
                        title: Text(
                          'NOTIFICATIONS',
                          style: TextStyle(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0),
                        ),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => NotificationsPage()));
                        }),
                    ListTile(
                        leading: Icon(Foundation.clipboard_notes,
                            color: Colors.blue[900], size: 30.0),
                        title: Text(
                          'SALES',
                          style: TextStyle(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0),
                        ),
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) => Sales()));
                        }),
                    ListTile(
                        leading: Icon(Icons.mail,
                            color: Colors.blue[900], size: 30.0),
                        title: Text(
                          'MESSAGES',
                          style: TextStyle(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0),
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (_) => Messages()));
                        }),
                    ListTile(
                        leading: Icon(MaterialCommunityIcons.gift,
                            color: Colors.blue[900], size: 30.0),
                        title: Text(
                          'COMPANY PRODUCTS',
                          style: TextStyle(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0),
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (_) => Products()));
                        }),
                    ExpansionTile(
                      leading: Icon(Entypo.megaphone,
                          color: Colors.blue[900], size: 30.0),
                      title: Text(
                        'ADVERTS',
                        style: TextStyle(
                            color: Colors.blue[900],
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0),
                      ),
                      children: <Widget>[adDropDown()],
                    ),
                    ListTile(
                        leading: Icon(AntDesign.checkcircleo,
                            color: Colors.blue[900], size: 30.0),
                        title: Text(
                          'VERIFICATION',
                          style: TextStyle(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0),
                        ),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => VerifyYourAccount()));
                        }),
                    ListTile(
                        leading: Icon(AntDesign.creditcard,
                            color: Colors.blue[900], size: 30.0),
                        title: Text(
                          'SUBSCRIPTION',
                          style: TextStyle(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0),
                        ),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => Subscription()));
                        }),
                    ListTile(
                        leading: Icon(Icons.person,
                            color: Colors.blue[900], size: 30.0),
                        title: Text(
                          'CONTACT ADMIN',
                          style: TextStyle(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0),
                        ),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => ContactAdmin()));
                        }),
                    ListTile(
                        leading: Icon(Entypo.wallet,
                            color: Colors.blue[900], size: 30.0),
                        title: Text(
                          'WALLET',
                          style: TextStyle(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0),
                        ),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => WalletAccount()));
                        }),
                    ListTile(
                        leading: Icon(Icons.settings,
                            color: Colors.blue[900], size: 30.0),
                        title: Text(
                          'SETTINGS',
                          style: TextStyle(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0),
                        ),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => AccountSettings()));
                        }),
                    SizedBox(height: 20.0),
                    Divider(),
                    ListTile(
                        //  leading: Icon(Entypo.wallet, color: Colors.blue[900], size: 30.0),
                        title: Text(
                          'Logout',
                          style: TextStyle(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.w300,
                              fontSize: 16.0),
                        ),
                        onTap: () {}),
                  ],
                ),
              ),
            ),
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
                child: Column(children: <Widget>[
              Container(
                height: 500,
                child: Stack(
                  children: <Widget>[
                    blueContainer(),
                    Positioned(
                        top: 25,
                        left: 16,
                        child: IconButton(
                            icon: Icon(Icons.menu, color: Colors.white),
                            onPressed: () =>
                                _scaffoldKey.currentState.openDrawer())),
                    Positioned(
                        top: 25,
                        right: 20,
                        child: IconButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => ManufacturersProfile()));
                            },
                            icon: Icon(Icons.account_circle,
                                color: Colors.white, size: 40))),
                    Positioned(
                        top: 100,
                        left: 30,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Dangote Group',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18)),
                            SizedBox(height: 5),
                            Text('Bal: N2,000,000',
                                style: TextStyle(
                                    color: Colors.white,
                                    // fontWeight:FontWeight.w300,
                                    fontSize: 14))
                          ],
                        )),
                    Positioned(
                      left: 20,
                      top: 200,
                      child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => WalletAccount()));
                          },
                          child: subContainerOne()),
                    ),
                    Positioned(
                      right: 20,
                      top: 200,
                      child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => ManufacturersOrderDetails()));
                          },
                          child: subContainerTwo()),
                    ),
                    Positioned(
                      left: 20,
                      top: 360,
                      child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => FactoryView()));
                          },
                          child: subContainerThree()),
                    ),
                    Positioned(
                        left: 55,
                        top: 460,
                        child: Container(
                            height: 30,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                                color: Colors.red[900],
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                                child: Text('Factory view',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ))))),
                    Positioned(
                      right: 20,
                      top: 360,
                      child: GestureDetector(
                          onTap: () {
                            // Navigator.of(context).push(MaterialPageRoute(
                            //   builder: (_) => WalletAccount()));
                          },
                          child: subContainerFour()),
                    ),
                  ],
                ),
              ),
              contentBox()
            ]))));
  }

  Widget dropDown() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 60.0, vertical: 1),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              FlatButton(
                onPressed: () {},
                child: Text('All Products',
                    style: TextStyle(
                        color: Colors.blue[900], fontWeight: FontWeight.w600)),
              ),
              SizedBox(height: 5.0),
              FlatButton(
                onPressed: () {},
                child: Text('Add New Products',
                    style: TextStyle(
                        color: Colors.blue[900], fontWeight: FontWeight.w600)),
              ),
            ]));
  }

  Widget adDropDown() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 60.0, vertical: 1),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => NewAds()));
                },
                child: Text('New Ads',
                    style: TextStyle(
                        color: Colors.blue[900], fontWeight: FontWeight.w600)),
              ),
              SizedBox(height: 5.0),
              FlatButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => NewAdvert()));
                },
                child: Text('Post New Ads',
                    style: TextStyle(
                        color: Colors.blue[900], fontWeight: FontWeight.w600)),
              ),
            ]));
  }

  Widget blueContainer() {
    return ClipPath(
        clipper: ArcClipper(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 240,
          color: Colors.blue[900],
        ));
  }

  Widget subContainerTwo() {
    return Container(
      height: 110,
      width: 150,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 10.0, // soften the shadow
          spreadRadius: 2.0, //extend the shadow
          offset: Offset(
            0.0, // Move to right 10  horizontally
            0.0, // Move to bottom 10 Vertically
          ),
        )
      ], color: Colors.white, borderRadius: BorderRadius.circular(5.0)),
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.sms, color: Colors.blue[900], size: 30),
                    SizedBox(width: 10),
                    Text('ORDER \n REQUESTS',
                        style: TextStyle(color: Colors.blue[900], fontSize: 12))
                  ]),
              Text('4',
                  style: TextStyle(
                      color: Colors.red[900],
                      fontSize: 14,
                      fontWeight: FontWeight.w500))
            ]),
      ),
    );
  }

  Widget subContainerThree() {
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

  Widget subContainerFour() {
    return Container(
        height: 110,
        width: 150,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0, // soften the shadow
            spreadRadius: 2.0, //extend the shadow
            offset: Offset(
              0.0, // Move to right 10  horizontally
              0.0, // Move to bottom 10 Vertically
            ),
          )
        ], color: Colors.white, borderRadius: BorderRadius.circular(5.0)),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(Foundation.shopping_cart, color: Colors.blue[900], size: 45),
            SizedBox(width: 5),
            Text('Start Shopping',
                style: TextStyle(color: Colors.blue[900], fontSize: 14))
          ],
        )));
  }

  Widget subContainerOne() {
    return Container(
        height: 110,
        width: 150,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0, // soften the shadow
            spreadRadius: 2.0, //extend the shadow
            offset: Offset(
              0.0, // Move to right 10  horizontally
              0.0, // Move to bottom 10 Vertically
            ),
          )
        ], color: Colors.white, borderRadius: BorderRadius.circular(5.0)),
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(FontAwesome.line_chart,
                          color: Colors.blue[900], size: 30),
                      SizedBox(width: 5),
                      Text('TRANSACTION \n AMOUNT',
                          style:
                              TextStyle(color: Colors.blue[900], fontSize: 12))
                    ]),
                Text('N2,000,000.00',
                    style: TextStyle(
                        color: Colors.red[900],
                        fontSize: 14,
                        fontWeight: FontWeight.w500))
              ]),
        ));
  }

  Widget contentBox() {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        width: MediaQuery.of(context).size.width,
        height: 220,
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
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
          color: Colors.white,
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('Chat History',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 18,
                      fontWeight: FontWeight.w600)),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.account_circle),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Admin',
                                style: TextStyle(
                                  color: Colors.grey,
                                )),
                            SizedBox(height: 5),
                            actionBtn('How much instrument')
                          ],
                        )
                      ],
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Action',
                              style: TextStyle(
                                color: Colors.grey,
                              )),
                          SizedBox(height: 5),
                          viewBtn(),
                        ])
                  ]),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.account_circle),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Admin',
                                style: TextStyle(
                                  color: Colors.grey,
                                )),
                            SizedBox(height: 5),
                            actionBtn('Kindly sign the document')
                          ],
                        )
                      ],
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Action',
                              style: TextStyle(
                                color: Colors.grey[400],
                              )),
                          SizedBox(height: 5),
                          viewBtn(),
                        ])
                  ]),
            ]));
  }

  Widget actionBtn(String text) {
    return Container(
        height: 20,
        width: 150,
        decoration: BoxDecoration(
            color: Colors.blue[900], borderRadius: BorderRadius.circular(15)),
        child: Center(
            child: Text(text,
                style: TextStyle(color: Colors.white, fontSize: 11))));
  }

  Widget viewBtn() {
    return Container(
        height: 20,
        width: 70,
        decoration: BoxDecoration(
            color: Colors.red[900], borderRadius: BorderRadius.circular(15)),
        child: Center(
            child: Text('View/Reply',
                style: TextStyle(color: Colors.white, fontSize: 11))));
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
