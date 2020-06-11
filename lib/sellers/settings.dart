import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:bloomzon/sellers/account_upgrade.dart';
import 'package:bloomzon/sellers/package.dart';
import 'package:bloomzon/sellers/policy_settings.dart';
import 'package:bloomzon/sellers/promotion_code.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            // bottomNavigationBar: bottomNavBar(),
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
          GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => AccountUpgrade()));
              },
              child: options(Foundation.upload_cloud, 'Account Upgrade')),
          GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => PromotionCode()));
              },
              child: options(Entypo.typing, 'Promotion Code')),
          GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Package()));
              },
              child: options(AntDesign.gift, 'Package Update')),
          GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => PolicySettings()));
              },
              child: options(FontAwesome.handshake_o, 'Trading Policies'))
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
                child: Text('Settings',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)))));
  }

  Widget options(IconData icon, String text) {
    return Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.symmetric(vertical: 10),
        width: 300,
        height: 60,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        child: Center(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
              Icon(icon, size: 35, color: Colors.blue[900]),
              SizedBox(width: 20),
              VerticalDivider(),
              SizedBox(width: 20),
              Text(text,
                  style: TextStyle(
                      color: Colors.blue[900],
                      fontWeight: FontWeight.w600,
                      fontSize: 16))
            ])));
  }

  Widget bottomNavBar() {
    return Container(
      padding: EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width,
      height: 70,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.notifications, color: Colors.grey),
              SizedBox(height: 3.0),
              Text('Home', style: TextStyle(color: Colors.grey, fontSize: 12))
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.account_circle, color: Colors.grey),
              SizedBox(height: 3.0),
              Text('Account',
                  style: TextStyle(color: Colors.grey, fontSize: 12))
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.mail, color: Colors.grey),
              SizedBox(height: 3.0),
              Text('Messages',
                  style: TextStyle(color: Colors.grey, fontSize: 12))
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.exit_to_app, color: Colors.grey),
              SizedBox(height: 3.0),
              Text('Logout', style: TextStyle(color: Colors.grey, fontSize: 12))
            ],
          )
        ],
      ),
    );
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
