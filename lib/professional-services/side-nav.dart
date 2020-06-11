import 'package:bloomzon/Initial-pages/landing-page.dart';
import 'package:bloomzon/professional-services/contact-admin.dart';
import 'package:bloomzon/professional-services/feedback.dart';
import 'package:bloomzon/professional-services/messages.dart';
import 'package:bloomzon/professional-services/new-ads.dart';
import 'package:bloomzon/professional-services/notification.dart';
import 'package:bloomzon/professional-services/order-request.dart';
import 'package:bloomzon/professional-services/post-ad.dart';
import 'package:bloomzon/professional-services/product.dart';
import 'package:bloomzon/professional-services/profile.dart';
import 'package:bloomzon/professional-services/saleshistory.dart';
import 'package:bloomzon/professional-services/shop-gallery.dart';
import 'package:bloomzon/professional-services/wallet.dart';
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
          leading: Image.asset('images/icons1.png'),
          title: new Text(
            'Products',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xff02499B),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProductPage()),
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
          leading: Image.asset('images/shop.png'),
          title: new Text(
            'Shop Gallery',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xff02499B),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => GalleryPage()),
            );
          },
        ),
        new ListTile(
          leading: Image.asset('images/request.png'),
          title: new Text(
            'Requests',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xff02499B),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RequestPage()),
            );
          },
        ),
        new ListTile(
          leading: Image.asset('images/sales_history.png'),
          title: new Text(
            'Sales History',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xff02499B),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SalesHistoryPage()),
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
            'Feedback & Review',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xff02499B),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FeedbackPage()),
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
