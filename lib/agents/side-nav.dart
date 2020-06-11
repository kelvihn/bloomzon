import 'package:bloomzon/Initial-pages/landing-page.dart';
import 'package:bloomzon/agents/allsellerschart.dart';
import 'package:bloomzon/agents/contact-admin.dart';
import 'package:bloomzon/agents/createseller.dart';
import 'package:bloomzon/agents/messages.dart';
import 'package:bloomzon/agents/notification.dart';
import 'package:bloomzon/agents/profile.dart';
import 'package:bloomzon/agents/verify.dart';
import 'package:bloomzon/agents/wallet.dart';
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
            'Profile Settings',
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
          leading: Image.asset('images/bell.png'),
          title: new Text(
            'Notification',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xff02499B),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NotificationPage()),
            );
          },
        ),
        new ListTile(
          leading: Image.asset('images/messages.png'),
          title: new Text(
            'Messages',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xff02499B),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MessagesPage()),
            );
          },
        ),
        new ListTile(
          leading: Image.asset('images/createseller.png'),
          title: new Text(
            'Create Seller Account',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xff02499B),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CreateSellerPage()),
            );
          },
        ),
        new ListTile(
          leading: Image.asset('images/sellchart.png'),
          title: new Text(
            'All Sellers Pre-chart',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xff02499B),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AllSellersChartPage()),
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
          leading: Image.asset('images/very.png'),
          title: new Text(
            'Verification',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xff02499B),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => VerifyPage()),
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
