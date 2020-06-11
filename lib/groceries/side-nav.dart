import 'package:bloomzon/Initial-pages/landing-page.dart';
import 'package:bloomzon/groceries/contact-admin.dart';
import 'package:bloomzon/groceries/create-catalogue.dart';
import 'package:bloomzon/groceries/food-menu.dart';
import 'package:bloomzon/groceries/messages.dart';
import 'package:bloomzon/groceries/new-ads.dart';
import 'package:bloomzon/groceries/orders.dart';
import 'package:bloomzon/groceries/post-ad.dart';
import 'package:bloomzon/groceries/profile.dart';
import 'package:bloomzon/groceries/review.dart';
import 'package:bloomzon/groceries/settings.dart';
import 'package:bloomzon/groceries/wallet.dart';
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
          leading: Image.asset('images/catalogue.png'),
          title: new Text(
            'Food Catalogue',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xff02499B),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CreateCataloguePage()),
            );
          },
        ),
        new ListTile(
          leading: Image.asset('images/foodmenu.png'),
          title: new Text(
            'Food Menu',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xff02499B),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FoodMenuPage()),
            );
          },
        ),
        new ListTile(
          leading: Image.asset('images/order_icon.png'),
          title: new Text(
            'Orders',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xff02499B),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OrderPage()),
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
            'Review and FeedBack',
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
        new ListTile(
          leading: Image.asset('images/settings.png'),
          title: new Text(
            'Settings',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xff02499B),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SettingsPage()),
            );
          },
        ),
        ExpansionTile(
          leading: Image.asset('images/adverticon.png'),
          title: Text(
            'Adverts',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xff02499B),
            ),
          ),
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewAdPage()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(70.0, 5.0, 0.0, 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'All Ads',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff02499B),
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PostAdPage()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(70.0, 5.0, 0.0, 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Post new ads',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff02499B),
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
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
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LandingPage()),
            );
          },
        ),
      ],
    ));
  }
}
