import 'package:bloomzon/Initial-pages/account-creation.dart';
import 'package:bloomzon/Initial-pages/bloomzonproperties.dart';
import 'package:bloomzon/Initial-pages/policies.dart';
import 'package:bloomzon/Initial-pages/bloomzontrip.dart';
import 'package:bloomzon/Initial-pages/shirt-single.dart';
import 'package:bloomzon/agents/network_list.dart';
import 'package:bloomzon/buyers/bloomzon-products.dart';
import 'package:bloomzon/buyers/products.dart';
import 'package:bloomzon/groceries/fastfood_list.dart';
import 'package:bloomzon/groceries/groceriesdashboard.dart';
import 'package:bloomzon/manufacturers/manufacturer_list.dart';
import 'package:bloomzon/professional-services/proservicelist.dart';
import 'package:bloomzon/sellers/seller_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'login.dart';
import 'package:tabbar/tabbar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  // final controller = PageController();
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: new AppBar(
              iconTheme: new IconThemeData(color: Color(0xff02499B)),
              backgroundColor: Colors.white,
              elevation: 0.0,
              actions: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                      child: ButtonTheme(
                        height: 25,
                        minWidth: 50,
                        child: RaisedButton(
                          color: Color(0xffAF2E1D),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              style: BorderStyle.solid,
                              color: Color(0xffAF2E1D),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(50.0),
                            ),
                          ),
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          textColor: Colors.white,
                          highlightElevation: 8.0,
                          splashColor: Colors.white,
                          elevation: 2.0,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()),
                            );
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 15.0, 0.0),
                      child: ButtonTheme(
                        height: 25,
                        minWidth: 50,
                        child: RaisedButton(
                          color: Color(0xff02499B),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              style: BorderStyle.solid,
                              color: Color(0xff02499B),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(50.0),
                            ),
                          ),
                          child: Text(
                            "Signup",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          textColor: Colors.white,
                          highlightElevation: 8.0,
                          splashColor: Colors.white,
                          elevation: 2.0,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AccountCreationPage()),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            drawer: new Drawer(
                child: new ListView(
              children: <Widget>[
                new ListTile(
                  title: new Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff02499B),
                    ),
                  ),
                  onTap: () {},
                ),
                ExpansionTile(
                  leading: Image.asset('images/vendor.png'),
                  title: Text(
                    'Vendors',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff02499B),
                    ),
                  ),
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SellerList()),
                        );
                      },
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(70.0, 5.0, 0.0, 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Sellers',
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
                          MaterialPageRoute(builder: (context) => ProService()),
                        );
                      },
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(70.0, 5.0, 0.0, 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Professionals',
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
                          MaterialPageRoute(
                              builder: (context) => ManufacturerList()),
                        );
                      },
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(70.0, 5.0, 0.0, 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Manufacturers',
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
                    /*
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GroceriesDashboardPage()),
                        );
                      },
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(70.0, 5.0, 0.0, 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Fast Food & Groceries',
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
                    */
                  ],
                ),
                new ListTile(
                  leading: Image.asset('images/allproducts.png'),
                  title: new Text(
                    'All Products',
                    style: TextStyle(
                      fontSize: 20,
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
                  leading: Image.asset('images/bloomsales.png'),
                  title: new Text(
                    'Bloomzon Sales',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff02499B),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BloomzonProductPage()),
                    );
                  },
                ),
                ExpansionTile(
                  leading: Image.asset('images/flight.png'),
                  title: Text(
                    'Flight',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff02499B),
                    ),
                  ),
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(70.0, 5.0, 0.0, 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Change App',
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
                      onTap: () {},
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(70.0, 5.0, 0.0, 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Language(English, French, Latin)',
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
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(70.0, 5.0, 0.0, 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Login',
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
                          MaterialPageRoute(
                              builder: (context) => AccountCreationPage()),
                        );
                      },
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(70.0, 5.0, 0.0, 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Sign Up',
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
//                  Navigator.push(
//                    context,
//                    MaterialPageRoute(builder: (context) => PostAdPage()),
//                  );
                      },
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(70.0, 5.0, 0.0, 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Become an Associate',
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
                          MaterialPageRoute(
                              builder: (context) =>
                                  PoliciesPage(policy: 'Terms & Conditions')),
                        );
                      },
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(70.0, 5.0, 0.0, 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Terms & Conditions',
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
                          MaterialPageRoute(
                              builder: (context) =>
                                  PoliciesPage(policy: 'Gift Policy')),
                        );
                      },
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(70.0, 5.0, 0.0, 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Gift Policy',
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
                  leading: Image.asset('images/tv.png'),
                  title: new Text(
                    'Bloomzon TV',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff02499B),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BloomzonProductPage()),
                    );
                  },
                ),
                new ListTile(
                  title: new Text(
                    'Bloomzon Properties',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff02499B),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BloomzonPropertiesPage()),
                    );
                  },
                ),
                new ListTile(
                  title: new Text(
                    'Bloomzon Trip',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff02499B),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BloomzonTripPage()),
                    );
                  },
                ),
              ],
            )),
            body: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                  searchBox(),
                  Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Text('Best Deals',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue[900],
                              fontSize: 25))),
                  bestDealBox(),
                  SizedBox(height: 10),
                  Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Text('Vendors',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue[900],
                              fontSize: 25))),
                  vendorsBox(),
                  SizedBox(height: 10),
                  Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Text('Recommended',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue[900],
                              fontSize: 25))),
                  recommendedBoxRow(),
                  SizedBox(height: 10),
                  Container(
                      height: 60,
                      child: TabBar(
                        indicatorColor: Colors.blue[900],
                        controller: _tabController,
                        unselectedLabelColor: Colors.grey,
                        labelColor: Colors.blue[900],
                        tabs: [
                          new Tab(icon: Text('ALL')),
                          new Tab(
                            icon: new Text('Popular'),
                          ),
                          new Tab(
                            icon: new Text('Categories'),
                          )
                        ],
                      )),
                  Container(
                    height: 500,
                    child: TabBarView(
                      children: [
                        firstTabPage(),
                        secondTabPage(),
                        thirdTabPage()
                      ],
                      controller: _tabController,
                    ),
                  )
                ]))));
  }

  Widget bestDealBox() {
    return Stack(children: <Widget>[
      Container(
          height: 200,
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Colors.blue[900])),
      Positioned(
          right: 20, top: 20, child: smallIconBox(AntDesign.heart, Colors.red)),
      Positioned(
          left: 20,
          top: 20,
          child: Container(
              child: Text('50% OFF!',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold)))),
      Positioned(
          right: 20,
          bottom: 20,
          child: Container(
              child: Text('View now',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600)))),
      Positioned(
          top: 70,
          bottom: 40,
          left: 40,
          right: 40,
          child: Image.asset('images/png_shoe.png', width: 50))
    ]);
  }

  Widget searchBox() {
    return Container(
        height: 50,
        padding: EdgeInsets.symmetric(horizontal: 10),
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(25)),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(Icons.search, color: Colors.blue[500]),
              SizedBox(width: 20),
              Expanded(
                  child: TextField(
                      decoration: InputDecoration.collapsed(
                          hintText: 'Search our products')))
            ]));
  }

  Widget vendorsBox() {
    return Container(
        height: 130,
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Center(
            child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FastfoodList()),
                  );
                },
                child: vendorSmallBox(
                    'images/service1.jpg', 'Fast Food\nVendors')),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NetworkList()),
                  );
                },
                child: vendorSmallBox(
                    'images/service2.jpg', 'Networking Associates')),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ManufacturerList()),
                  );
                },
                child: vendorSmallBox('images/service3.jpg', 'Manufacturers')),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FastfoodList()),
                  );
                },
                child: vendorSmallBox('images/service4.jpg', 'Groceries')),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProService()),
                  );
                },
                child: vendorSmallBox(
                    'images/service5.jpg', 'Professional Service')),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SellerList()),
                  );
                },
                child: vendorSmallBox('images/service6.jpg', 'Sellers'))
          ],
        )));
  }

  Widget vendorSmallBox(String image, String text) {
    return Stack(
      children: [
        Container(
          height: 100,
          width: 120,
          margin: EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        ),
        Positioned(
            bottom: 0,
            left: 10,
            right: 10,
            child: RaisedButton(
                color: Colors.red[900],
                onPressed: () {},
                child: Text(text,
                    style: TextStyle(color: Colors.white, fontSize: 12))))
      ],
    );
  }

  Widget recommendedBox(String image, String text) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ShirtSingle(image: image, name: text)));
        },
        child: Stack(children: <Widget>[
          Container(
              height: 150,
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
              width: MediaQuery.of(context).size.width * 0.45,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 5.0, // soften the shadow
                  spreadRadius: 0.5, //extend the shadow
                  offset: Offset(
                    0.0, // Move to right 10  horizontally
                    0.0, // Move to bottom 10 Vertically
                  ),
                )
              ], borderRadius: BorderRadius.circular(5), color: Colors.white)),
          Positioned(
              right: 50,
              top: 25,
              child: smallIconBox(AntDesign.heart, Colors.red)),
          Positioned(
              right: 10,
              top: 25,
              child: smallIconBox(AntDesign.shoppingcart, Colors.blue[900])),
          Positioned(
              left: 10,
              top: 30,
              child: Text('\$200',
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold))),
          Positioned(
              top: 50,
              bottom: 50,
              left: 50,
              right: 50,
              child: Image.asset(image, width: 70)),
          Positioned(
              bottom: 0,
              child: itemDescriptionBox(
                  MediaQuery.of(context).size.width * 0.45, text))
        ]));
  }

  Widget itemDescriptionBox(double width, String text) {
    return Container(
        width: width,
        padding: EdgeInsets.symmetric(vertical: 3, horizontal: 3),
        margin: EdgeInsets.symmetric(horizontal: 5),
        height: 50,
        decoration: BoxDecoration(
            color: Colors.blue[900].withOpacity(.9),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5))),
        child: Text(text, style: TextStyle(color: Colors.white, fontSize: 12)));
  }

  Widget recommendedBoxRow() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            recommendedBox('images/png_shirt.png',
                'Classic Tee Shirt, Unisex, 50% discount'),
            recommendedBox(
                'images/png_bag.png', 'Gucci Handbag, Unisex, 50% discount'),
          ],
        ));
  }

  Widget firstTabPage() {
    return Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Center(
            child: Column(
          children: [
            GridView.count(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2,
              children: [
                gridItem('images/watch_bg1.jpg',
                    '5 inch platinum glass smart watch'),
                gridItem('images/camera_bg1.jpg',
                    'Camon X powerful HD camera and 100% zoom'),
                //gridItem('images/sunglasses.jpg'),
              ],
            ),
            SizedBox(height: 10),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                          '5 inch platinum glass smart watch and full HD video cam',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w600)),
                      SizedBox(height: 5),
                      ratingBar()
                    ])),
            SizedBox(height: 10),
            GridView.count(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              crossAxisCount: 2,
              children: [
                gridItem('images/canvas1.jpg', ''),
                gridItem('images/coats1.jpg', ''),
                // gridItem('images/sunglasses.jpg'),
              ],
            ),
            SizedBox(height: 10),
          ],
        )));
  }

  Widget secondTabPage() {
    return Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Center(
            child: Column(
          children: [
            GridView.count(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2,
              children: [
                gridItem('images/watch_bg1.jpg',
                    '5 inch platinum glass smart watch'),
                gridItem('images/camera_bg1.jpg',
                    'Camon X powerful HD camera and 100% zoom'),
                //gridItem('images/sunglasses.jpg'),
              ],
            ),
            SizedBox(height: 10),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                          '5 inch platinum glass smart watch and full HD video cam',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w600)),
                      SizedBox(height: 5),
                      ratingBar()
                    ])),
            SizedBox(height: 10),
            GridView.count(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              crossAxisCount: 2,
              children: [
                gridItem('images/canvas1.jpg', ''),
                gridItem('images/coats1.jpg', ''),
                // gridItem('images/sunglasses.jpg'),
              ],
            ),
            SizedBox(height: 10),
          ],
        )));
  }

  Widget gridItem(String image, String text) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ShirtSingle(image: image, name: text)));
        },
        child: Stack(children: <Widget>[
          Container(
              height: 170,
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 5.0, // soften the shadow
                      spreadRadius: 0.5, //extend the shadow
                      offset: Offset(
                        0.0, // Move to right 10  horizontally
                        0.0, // Move to bottom 10 Vertically
                      ),
                    )
                  ],
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white)),
          Positioned(
              right: 50,
              top: 15,
              child: smallIconBox(AntDesign.heart, Colors.red)),
          Positioned(
              right: 10,
              top: 15,
              child: smallIconBox(AntDesign.shoppingcart, Colors.blue[900])),
          Positioned(
              left: 10,
              top: 20,
              child: Text('\$1000',
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold))),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: itemDescriptionBox2(
                  MediaQuery.of(context).size.width / 2, text))
        ]));
  }

  Widget smallIconBox(IconData icon, Color color) {
    return Container(
        alignment: Alignment.center,
        height: 30,
        width: 30,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 5.0, // soften the shadow
            spreadRadius: 0.5, //extend the shadow
            offset: Offset(
              0.0, // Move to right 10  horizontally
              0.0, // Move to bottom 10 Vertically
            ),
          )
        ], color: Colors.white, borderRadius: BorderRadius.circular(25)),
        child: Icon(icon, color: color, size: 15));
  }

  Widget itemDescriptionBox2(double width, String text) {
    return Container(
        width: width,
        padding: EdgeInsets.symmetric(vertical: 3, horizontal: 3),
        margin: EdgeInsets.symmetric(horizontal: 5),
        height: 50,
        decoration: BoxDecoration(
            color: Colors.blue[900].withOpacity(.9),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5))),
        child: Text(text, style: TextStyle(color: Colors.white, fontSize: 12)));
  }

  Widget thirdTabPage() {
    return Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Center(
            child: Column(children: [
          ListTile(
            leading: Image.asset('images/icons1.png', height: 70),
            title: Text('Bloomzon Products',
                style: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 16,
                    fontWeight: FontWeight.w500)),
            trailing: IconButton(
                icon: Icon(Icons.arrow_forward, color: Colors.blue[900]),
                onPressed: () {}),
          ),
          Divider(),
          ListTile(
            leading: Image.asset('images/icons2.png', height: 70),
            title: Text('Fashion & Tailoring',
                style: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 16,
                    fontWeight: FontWeight.w500)),
            trailing: IconButton(
                icon: Icon(Icons.arrow_forward, color: Colors.blue[900]),
                onPressed: () {}),
          ),
          Divider(),
          ListTile(
            leading: Image.asset('images/icons3.png', height: 70),
            title: Text('Professional Services',
                style: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 16,
                    fontWeight: FontWeight.w500)),
            trailing: IconButton(
                icon: Icon(Icons.arrow_forward, color: Colors.blue[900]),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => ProService()));
                }),
          ),
          Divider(),
          ListTile(
            leading: Image.asset('images/icons4.png', height: 70),
            title: Text('Home Appliance',
                style: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 16,
                    fontWeight: FontWeight.w500)),
            trailing: IconButton(
                icon: Icon(Icons.arrow_forward, color: Colors.blue[900]),
                onPressed: () {}),
          ),
          Divider(),
          ListTile(
            leading: Image.asset('images/icons5.png', height: 70),
            title: Text('Baby Care',
                style: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 16,
                    fontWeight: FontWeight.w500)),
            trailing: IconButton(
                icon: Icon(Icons.arrow_forward, color: Colors.blue[900]),
                onPressed: () {}),
          ),
          Divider(),
          ListTile(
            leading: Image.asset('images/icons6.png', height: 70),
            title: Text('Beauties',
                style: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 16,
                    fontWeight: FontWeight.w500)),
            trailing: IconButton(
                icon: Icon(Icons.arrow_forward, color: Colors.blue[900]),
                onPressed: () {}),
          ),
          Divider(),
        ])));
  }

  Widget ratingBar() {
    return Container(
        child: RatingBar(
      initialRating: 4,
      itemSize: 16,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      //itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    ));
  }
}
//email
//phone number
//name
//address
//bike plate number,
//picture,
