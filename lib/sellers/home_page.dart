import 'package:flutter/cupertino.dart';
import 'package:flutter_collapse/flutter_collapse.dart';
import 'package:bloomzon/sellers/account_upgrade.dart';
import 'package:bloomzon/sellers/history.dart';
import 'package:bloomzon/sellers/live_tracking.dart';
import 'package:bloomzon/sellers/profile.dart';
import 'package:bloomzon/sellers/product_catalogue.dart';
import 'package:bloomzon/sellers/add_new_product.dart';
import 'package:bloomzon/sellers/advert.dart';
import 'package:bloomzon/sellers/new_advert.dart';
import 'package:bloomzon/sellers/notifications.dart';
import 'package:bloomzon/sellers/bloomzon.dart';
import 'package:bloomzon/sellers/contact_admin_one.dart';
import 'package:bloomzon/sellers/all_orders.dart';
import 'package:bloomzon/sellers/reviews.dart';
import 'package:bloomzon/sellers/messages.dart';
import 'package:bloomzon/sellers/points.dart';
import 'package:bloomzon/sellers/verify_your_account.dart';
import 'package:bloomzon/sellers/wallet_account.dart';
import 'package:bloomzon/sellers/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:bloomzon/sellers/ware_house.dart';

class SellerHomePage extends StatefulWidget {
  @override
  _SellerHomePageState createState() => _SellerHomePageState();
}

class _SellerHomePageState extends State<SellerHomePage> {
  bool isOpen = false;
  var _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.grey[200],
        drawer: Padding(
          padding: EdgeInsets.only(top: 60, left: 30, bottom: 30),
          child: Drawer(
            child: ListView(
              children: <Widget>[
                Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                        icon: Icon(AntDesign.close, color: Colors.blue[900]),
                        onPressed: () => Navigator.of(context).pop())),
                ListTile(
                    leading: Icon(Icons.account_circle,
                        color: Colors.blue[900], size: 30.0),
                    title: Text(
                      'Profile',
                      style: TextStyle(
                          color: Colors.blue[900],
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0),
                    ),
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) => Profile()));
                    }),
                ListTile(
                    leading: Icon(Foundation.clipboard_notes,
                        color: Colors.blue[900], size: 30.0),
                    title: Text(
                      'SALES HISTORY',
                      style: TextStyle(
                          color: Colors.blue[900],
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0),
                    ),
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) => History()));
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
                    leading:
                        Icon(Icons.mail, color: Colors.blue[900], size: 30.0),
                    title: Text(
                      'MESSAGES',
                      style: TextStyle(
                          color: Colors.blue[900],
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0),
                    ),
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) => Messages()));
                    }),
                ExpansionTile(
                  leading: Icon(MaterialCommunityIcons.gift,
                      color: Colors.blue[900], size: 30.0),
                  title: Text(
                    'PRODUCTS',
                    style: TextStyle(
                        color: Colors.blue[900],
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0),
                  ),
                  children: <Widget>[dropDown()],
                ),
                ListTile(
                    leading: Icon(AntDesign.shoppingcart,
                        color: Colors.blue[900], size: 30.0),
                    title: Text(
                      'BLOOMZON SALES',
                      style: TextStyle(
                          color: Colors.blue[900],
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0),
                    ),
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) => Bloomzon()));
                    }),
                ListTile(
                    leading: Icon(Octicons.book,
                        color: Colors.blue[900], size: 30.0),
                    title: Text(
                      'ORDERS',
                      style: TextStyle(
                          color: Colors.blue[900],
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0),
                    ),
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) => AllOrders()));
                    }),
                ListTile(
                    leading:
                        Icon(Icons.person, color: Colors.blue[900], size: 30.0),
                    title: Text(
                      'CONTACT ADMIN',
                      style: TextStyle(
                          color: Colors.blue[900],
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => ContactAdmin()));
                    }),
                ListTile(
                    leading: Icon(MaterialIcons.feedback,
                        color: Colors.blue[900], size: 30.0),
                    title: Text(
                      'REVIEW & FEEDBACK',
                      style: TextStyle(
                          color: Colors.blue[900],
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0),
                    ),
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) => Reviews()));
                    }),
                ListTile(
                    leading: Icon(Icons.location_on,
                        color: Colors.blue[900], size: 30.0),
                    title: Text(
                      'DELIVERY TRACKER',
                      style: TextStyle(
                          color: Colors.blue[900],
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => LiveTracking()));
                    }),
                ListTile(
                    leading: Icon(MaterialIcons.stars,
                        color: Colors.blue[900], size: 30.0),
                    title: Text(
                      'POINTS',
                      style: TextStyle(
                          color: Colors.blue[900],
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => PointScreen()));
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
                    leading: Icon(Foundation.shopping_cart,
                        color: Colors.blue[900], size: 30.0),
                    title: Text(
                      'WAREHOUSE/SHOPPERS',
                      style: TextStyle(
                          color: Colors.blue[900],
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0),
                    ),
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) => Warehouse()));
                    }),
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
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) => Settings()));
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
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => WalletAccount()));
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
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          Container(
            height: 400,
            child: Stack(
              children: <Widget>[
                redContainer(),
                Positioned(
                  left: 20,
                  top: 220,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) => History()));
                      },
                      child: subContainerOne()),
                ),
                Positioned(
                  right: 20,
                  top: 220,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => WalletAccount()));
                      },
                      child: subContainerTwo()),
                ),
                Positioned(
                  right: 22,
                  top: 310,
                  child: RaisedButton(
                      onPressed: () {},
                      color: Colors.red[900],
                      child: Text('Click to make withdrawal',
                          style: TextStyle(color: Colors.white, fontSize: 10))),
                ),
                Positioned(right: 0, left: 0, top: 50, child: menuBar()),
                Positioned(right: 0, left: 0, top: 120, child: detailBar())
              ],
            ),
          ),
          groupContainer()
        ])));
  }

  Widget menuBar() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              GestureDetector(
                onTap: () => _scaffoldKey.currentState.openDrawer(),
                child: Icon(Icons.menu, color: Colors.white),
              ),
              SizedBox(height: 5),
              Text('HOME',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600))
            ],
          ),
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Profile()));
              },
              icon: Icon(Icons.account_circle, color: Colors.white, size: 40))
        ],
      ),
    );
  }

  Widget detailBar() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Wallet',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 22,
                  )),
              SizedBox(height: 5),
              Text('Available: N20,000', style: TextStyle(color: Colors.white)),
              SizedBox(height: 5),
              Text('Net Bal: N10,000', style: TextStyle(color: Colors.white))
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Ben Paul',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 22,
                  )),
              SizedBox(height: 5),
              Text('Agent ID: Benpaul14',
                  style: TextStyle(color: Colors.white)),
            ],
          )
        ],
      ),
    );
  }

  Widget redContainer() {
    return Container(
        height: 250,
        color: Colors.red[900],
        width: MediaQuery.of(context).size.width);
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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(FontAwesome.line_chart, color: Colors.blue[900], size: 30),
                SizedBox(height: 2),
                Text('200',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.red[900])),
                SizedBox(height: 2),
                Text('Total Sales',
                    style: TextStyle(color: Colors.blue[900], fontSize: 14))
              ]),
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(FontAwesome.money, color: Colors.blue[900], size: 30),
              SizedBox(height: 2),
              Text('30',
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.red[900])),
              SizedBox(height: 2),
              Text('WITHDRAWAL',
                  style: TextStyle(color: Colors.blue[900], fontSize: 14))
            ]),
      ),
    );
  }

  Widget subContainerSix() {
    return GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => AccountUpgrade()));
        },
        child: Container(
            height: 110,
            width: 150,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5.0)),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(Ionicons.ios_arrow_dropup,
                    color: Colors.blue[900], size: 45),
                SizedBox(width: 8),
                Text('Upgrade Account',
                    style: TextStyle(color: Colors.blue[900], fontSize: 14))
              ],
            ))));
  }

  Widget subContainerThree() {
    return GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => AllOrders()));
        },
        child: Container(
          height: 110,
          width: 150,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5.0)),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(Foundation.clipboard_notes,
                        color: Colors.blue[900], size: 30),
                    SizedBox(width: 2),
                    Text('Total Purchase',
                        style: TextStyle(color: Colors.blue[900], fontSize: 14))
                  ]),
              SizedBox(height: 5),
              Text('50',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.red[900],
                      fontSize: 20))
            ],
          )),
        ));
  }

  Widget subContainerFour() {
    return GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => History()));
        },
        child: Container(
          height: 110,
          width: 150,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5.0)),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(FontAwesome.database,
                        color: Colors.blue[900], size: 30),
                    SizedBox(width: 2),
                    Text('Total Profit',
                        style: TextStyle(color: Colors.blue[900], fontSize: 14))
                  ]),
              SizedBox(height: 5),
              Text('N20,000',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.red[900],
                      fontSize: 20))
            ],
          )),
        ));
  }

  Widget subContainerFive() {
    return Container(
        height: 110,
        width: 150,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5.0)),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(Foundation.shopping_cart, color: Colors.blue[900], size: 45),
            SizedBox(width: 5),
            Text('Shoppers',
                style: TextStyle(color: Colors.blue[900], fontSize: 14))
          ],
        )));
  }

  Widget groupContainer() {
    return Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              subContainerThree(),
              SizedBox(width: 20.0),
              subContainerFour()
            ],
          ),
          SizedBox(height: 40.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              subContainerFive(),
              SizedBox(width: 20.0),
              subContainerSix()
            ],
          )
        ],
      )),
    );
  }

  Widget dropDown() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 60.0, vertical: 1),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              FlatButton(
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => ProductCatalogue())),
                child: Text('All Products',
                    style: TextStyle(
                        color: Colors.blue[900], fontWeight: FontWeight.w600)),
              ),
              SizedBox(height: 5.0),
              FlatButton(
                onPressed: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => NewProduct())),
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
                onPressed: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => NewAds())),
                child: Text('All Ads',
                    style: TextStyle(
                        color: Colors.blue[900], fontWeight: FontWeight.w600)),
              ),
              SizedBox(height: 5.0),
              FlatButton(
                onPressed: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => NewAdvert())),
                child: Text('Post New Ads',
                    style: TextStyle(
                        color: Colors.blue[900], fontWeight: FontWeight.w600)),
              ),
            ]));
  }
}
