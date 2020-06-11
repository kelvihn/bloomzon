import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
//import 'package:bloomzon/manufacturers/account_type.dart';
//import 'package:bloomzon/manufacturers/edit_profile.dart';
import 'package:bloomzon/manufacturers/manufacturers_main_profile.dart';
import 'package:bloomzon/manufacturers/update_acount.dart';
import 'package:bloomzon/manufacturers/account_type.dart';

class ManufacturersProfile extends StatefulWidget {
  @override
  _ManufacturersProfileState createState() => _ManufacturersProfileState();
}

class _ManufacturersProfileState extends State<ManufacturersProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            Align(alignment: Alignment.bottomCenter, child: largeContainer()),
            Positioned(top: 0, child: blueContainer()),
            Positioned(top: 225, left: 0, right: 0, child: accountInfo()),
            Positioned(
                top: 50,
                left: 10,
                child: IconButton(
                  icon: Icon(Icons.arrow_back, size: 32, color: Colors.white),
                  onPressed: () => Navigator.pop(context),
                ))
          ],
        ));
  }

  Widget largeContainer() {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      margin: EdgeInsets.only(bottom: 20),
      height: MediaQuery.of(context).size.height * 0.65,
      width: MediaQuery.of(context).size.width * 0.90,
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
      ], color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: ListView(
          //crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(height: 120),
            ListTile(
              leading: Icon(
                Icons.account_circle,
                size: 45,
                color: Colors.blue[900],
              ),
              title: Text('Edit Profile Details',
                  style: TextStyle(
                    color: Colors.blue[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  )),
              subtitle: Text('View and edit your information',
                  style: TextStyle(
                      color: Colors.blue[900], fontWeight: FontWeight.w600)),
              trailing: Icon(Ionicons.ios_arrow_forward,
                  color: Colors.blue[900], size: 40),
              onTap: () => showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) => ManufacturersMainProfile()),
            ),
            Divider(),
            ListTile(
                leading: Icon(
                  MaterialCommunityIcons.account_card_details,
                  size: 45,
                  color: Colors.blue[900],
                ),
                title: Text('Account Details',
                    style: TextStyle(
                      color: Colors.blue[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )),
                subtitle: Text('View and edit your details to recieve payment',
                    style: TextStyle(
                        color: Colors.blue[900], fontWeight: FontWeight.w600)),
                trailing: Icon(Ionicons.ios_arrow_forward,
                    color: Colors.blue[900], size: 40),
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => UpdateAccount()))),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.person,
                size: 45,
                color: Colors.blue[900],
              ),
              title: Text('User Account Type',
                  style: TextStyle(
                    color: Colors.blue[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  )),
              subtitle: Text('(View your account type and upgrade)',
                  style: TextStyle(
                      color: Colors.blue[900], fontWeight: FontWeight.w600)),
              trailing: Icon(Ionicons.ios_arrow_forward,
                  color: Colors.blue[900], size: 40),
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => AccountType())),
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.exit_to_app,
                size: 45,
                color: Colors.blue[900],
              ),
              title: Text('Sign Out',
                  style: TextStyle(
                    color: Colors.blue[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  )),
              trailing: Icon(Ionicons.ios_arrow_forward,
                  color: Colors.blue[900], size: 40),
            ),
          ]),
    );
  }

  Widget blueContainer() {
    return ClipPath(
        clipper: ArcClipper(),
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: 300,
            color: Colors.blue[900],
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.account_circle, size: 65, color: Colors.white),
                  SizedBox(height: 10),
                  Text('PROFILE',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold))
                ],
              ),
            )));
  }

  Widget accountInfo() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Container(
            width: 220,
            height: 50,
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
              child: Text("My Account Information",
                  style: TextStyle(
                      color: Colors.blue[900],
                      fontWeight: FontWeight.w600,
                      fontSize: 18)),
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
