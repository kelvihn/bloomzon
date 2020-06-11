import 'package:flutter/material.dart';
import 'package:bloomzon/manufacturers/manufacturers_attachment.dart';
import 'package:bloomzon/manufacturers/manufacturers_delivery_status.dart';
import 'package:bloomzon/manufacturers/manufacturers_transaction_details.dart';

class ManufacturersOrderDetails extends StatefulWidget {
  @override
  _ManufacturersOrderDetailsState createState() =>
      _ManufacturersOrderDetailsState();
}

class _ManufacturersOrderDetailsState extends State<ManufacturersOrderDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.grey[200],
            body: SingleChildScrollView(
                child: Column(
              children: <Widget>[
                SizedBox(height: 20),
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(Icons.arrow_back, color: Colors.blue[900]),
                          onPressed: () => Navigator.of(context).pop()),
                    ]),
                SizedBox(height: 10),
                Container(
                    color: Colors.white,
                    height: 70,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                        child: Text('Order Request',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)))),
                SizedBox(height: 20),
                contentBox('473D'),
                customDivider(),
                contentBox('573D'),
                customDivider(),
                contentBox('223D'),
                customDivider(),
                contentBox('473D')
              ],
            ))));
  }

  Widget contentBox(String id) {
    return Container(
        height: 120,
        child: Center(
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Container(
                  padding: EdgeInsets.all(10),
                  height: 120,
                  width: 180,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 5.0, // soften the shadow
                          spreadRadius: 0.5, //extend the shadow
                          offset: Offset(
                            0.0, // Move to right 10  horizontally
                            0.0, // Move to bottom 10 Vertically
                          ),
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0)),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        ClipOval(
                          child: Image.asset(
                            'images/sophia.jpg',
                            height: 60,
                          ),
                        ),
                        Text('ID: $id',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                                fontWeight: FontWeight.w600))
                      ])),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => ManufacturersTransactionDetails()));
                    },
                    child: customBtn('Order Details', Colors.red[900]),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => ManufacturersDeliveryStatus()));
                    },
                    child: customBtn('Delivery Status', Colors.red[900]),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) =>
                              ManufacturersTransactionAttachment()));
                    },
                    child: customBtn('Attachments', Colors.blue[900]),
                  ),
                ],
              )
            ])));
  }

  Widget customDivider() {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        height: 10,
        width: MediaQuery.of(context).size.width,
        color: Colors.white);
  }

  Widget customBtn(String text, Color color) {
    return Container(
        height: 30,
        width: 130,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
            child: Text(text,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 12))));
  }
}
