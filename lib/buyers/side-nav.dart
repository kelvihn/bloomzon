import 'package:bloomzon/Initial-pages/landing-page.dart';
import 'package:bloomzon/buyers/become-seller.dart';
import 'package:bloomzon/buyers/bloomzon-products.dart';
import 'package:bloomzon/buyers/contact-admin.dart';
import 'package:bloomzon/buyers/dispute.dart';
import 'package:bloomzon/buyers/favorites.dart';
import 'package:bloomzon/buyers/feedback.dart';
import 'package:bloomzon/buyers/messages.dart';
import 'package:bloomzon/buyers/new-ads.dart';
import 'package:bloomzon/buyers/notification.dart';
import 'package:bloomzon/buyers/payment-history.dart';
import 'package:bloomzon/buyers/points.dart';
import 'package:bloomzon/buyers/post-ad.dart';
import 'package:bloomzon/buyers/profile.dart';
import 'package:bloomzon/buyers/purchase-history.dart';
import 'package:bloomzon/buyers/review-add.dart';
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
          leading: Image.asset('images/purchase.png'),
          title: new Text(
            'Purchase History',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xff02499B),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PurchaseHistoryPage()),
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
          leading: Image.asset('images/favourite.png'),
          title: new Text(
            'Favorites',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xff02499B),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FavoritesPage()),
            );
          },
        ),
        new ListTile(
          leading: Image.asset('images/icons1.png'),
          title: new Text(
            'Bloomzon Products',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xff02499B),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BloomzonProductPage()),
            );
          },
        ),
        new ListTile(
          leading: Image.asset('images/payment-history.png'),
          title: new Text(
            'Payment History',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xff02499B),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PaymentHistoryPage()),
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
          leading: Image.asset('images/points.png'),
          title: new Text(
            'Points',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xff02499B),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PointsPage()),
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
        ExpansionTile(
          leading: Image.asset('images/rating.png'),
          title: Text(
            'Service Rating',
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
                  MaterialPageRoute(builder: (context) => DisputePage()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(70.0, 5.0, 0.0, 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Dispute',
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
                  MaterialPageRoute(builder: (context) => FeedbackPage()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(70.0, 5.0, 0.0, 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Feedback',
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
                  MaterialPageRoute(builder: (context) => ReviewAddPage()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(70.0, 5.0, 0.0, 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Review',
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
        ExpansionTile(
          leading: Image.asset('images/upgrade.png'),
          title: Text(
            'Upgrade',
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
                  MaterialPageRoute(builder: (context) => BecomeSellerPage()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(70.0, 5.0, 0.0, 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Become a seller',
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
