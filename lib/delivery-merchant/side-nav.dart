import 'package:bloomzon/Initial-pages/landing-page.dart';
import 'package:bloomzon/delivery-merchant/contact-admin.dart';
import 'package:bloomzon/delivery-merchant/deliverychat.dart';
import 'package:bloomzon/delivery-merchant/profile.dart';
import 'package:bloomzon/delivery-merchant/review.dart';
import 'package:bloomzon/delivery-merchant/track-live.dart';
import 'package:bloomzon/delivery-merchant/wallet.dart';
import 'package:flutter/material.dart';

class SideNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: new ListView(
      children: <Widget>[
        new SizedBox(
          height: 30,
        ),
        new ListTile(
          leading: Image.asset('images/nav1.png'),
          title: new Text(
            'Profile',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xff02499B),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfilePage()),
            );
          },
        ),
        new ListTile(
          leading: Image.asset('images/deliverychat.png'),
          title: new Text(
            'Delivery Chat',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xff02499B),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DeliveryChatPage()),
            );
          },
        ),
        new ListTile(
          leading: Image.asset('images/route.png'),
          title: new Text(
            'Routing',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xff02499B),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TrackLivePage()),
            );
          },
        ),
        new ListTile(
          leading: Image.asset('images/walleticon.png'),
          title: new Text(
            'Wallet',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xff02499B),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WalletPage()),
            );
          },
        ),
        new ListTile(
          leading: Image.asset('images/admin.png'),
          title: new Text(
            'Contact Admin',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xff02499B),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ContactAdminPage()),
            );
          },
        ),
        new ListTile(
          leading: Image.asset('images/review.png'),
          title: new Text(
            'Feedbacks',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xff02499B),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ReviewPage()),
            );
          },
        ),
        new Divider(),
        new ListTile(
          title: Center(
            child: new Text(
              'Logout',
              style: TextStyle(
                fontSize: 18,
                color: Color(0xff02499B),
              ),
            ),
          ),
          onTap: () {},
        ),
      ],
    ));
  }
}
