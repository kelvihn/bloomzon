import 'package:flutter/material.dart';
import 'package:bloomzon/sellers/edit_product.dart';

class ProductCatalogue extends StatefulWidget {
  @override
  _ProductCatalogueState createState() => _ProductCatalogueState();
}

class _ProductCatalogueState extends State<ProductCatalogue> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.blue[900],
            // bottomNavigationBar: bottomNavBar(),
            body: SingleChildScrollView(
                child: Column(children: <Widget>[
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                            icon: Icon(Icons.arrow_back, color: Colors.white),
                            onPressed: () => Navigator.of(context).pop()),
                        Container()
                      ])),
              Container(
                child: Text('My Product Catalogue',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 20.0),
              buildCatalogueBox(),
              buildCatalogueBox(),
              buildCatalogueBox(),
              buildCatalogueBox()
            ]))));
  }

  Widget verticalDivider() {
    return Container(
      height: 200,
      width: 1,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.blue[900]),
    );
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
              Icon(Icons.notifications, color: Colors.black54),
              SizedBox(height: 3.0),
              Text('Home',
                  style: TextStyle(color: Colors.black54, fontSize: 12))
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.account_circle, color: Colors.black54),
              SizedBox(height: 3.0),
              Text('Account',
                  style: TextStyle(color: Colors.black54, fontSize: 12))
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.mail, color: Colors.black54),
              SizedBox(height: 3.0),
              Text('Messages',
                  style: TextStyle(color: Colors.black54, fontSize: 12))
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.exit_to_app, color: Colors.black54),
              SizedBox(height: 3.0),
              Text('Logout',
                  style: TextStyle(color: Colors.black54, fontSize: 12))
            ],
          )
        ],
      ),
    );
  }

  Widget buildCatalogueBox() {
    return Container(
        height: 170,
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        width: MediaQuery.of(context).size.width * 0.95,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Office Chair',
                      style: TextStyle(
                          color: Colors.blue[900],
                          fontWeight: FontWeight.w600)),
                  Image.asset('images/png_bag.png', height: 60)
                ]),
            verticalDivider(),
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text('Amount:',
                            style: TextStyle(
                                color: Colors.blue[900],
                                fontWeight: FontWeight.w600)),
                        Text('N10,000',
                            style: TextStyle(
                                color: Colors.blue[900],
                                fontWeight: FontWeight.w300))
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text('Colours:',
                            style: TextStyle(
                                color: Colors.blue[900],
                                fontWeight: FontWeight.w600)),
                        Text('Blue,Red',
                            style: TextStyle(
                                color: Colors.blue[900],
                                fontWeight: FontWeight.w300))
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text('No. in Stock:',
                            style: TextStyle(
                                color: Colors.blue[900],
                                fontWeight: FontWeight.w600)),
                        Text('5',
                            style: TextStyle(
                                color: Colors.blue[900],
                                fontWeight: FontWeight.w300))
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text('Weight:',
                            style: TextStyle(
                                color: Colors.blue[900],
                                fontWeight: FontWeight.w600)),
                        Text('',
                            style: TextStyle(
                                color: Colors.blue[900],
                                fontWeight: FontWeight.w300))
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text('Size:',
                            style: TextStyle(
                                color: Colors.blue[900],
                                fontWeight: FontWeight.w600)),
                        Text('',
                            style: TextStyle(
                                color: Colors.blue[900],
                                fontWeight: FontWeight.w300))
                      ])
                ]),
            verticalDivider(),
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('Total Order',
                      style: TextStyle(
                          color: Colors.blue[900],
                          fontWeight: FontWeight.w600)),
                  Text('100',
                      style: TextStyle(
                          color: Colors.blue[900],
                          fontWeight: FontWeight.w300)),
                  RaisedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => EditProduct()));
                      },
                      color: Colors.red[900],
                      child: Text('Edit Product',
                          style: TextStyle(color: Colors.white)))
                ])
          ],
        ));
  }
}
