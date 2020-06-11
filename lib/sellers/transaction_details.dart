import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class TransactionDetails extends StatefulWidget {
  @override
  _TransactionDetailsState createState() => _TransactionDetailsState();
}

class _TransactionDetailsState extends State<TransactionDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.blue[900],
            body: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                  Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            IconButton(
                                icon:
                                    Icon(Icons.arrow_back, color: Colors.white),
                                onPressed: () => Navigator.of(context).pop()),
                            IconButton(
                                icon:
                                    Icon(AntDesign.close, color: Colors.white),
                                onPressed: () => Navigator.of(context).pop())
                          ])),
                  Container(
                    child: Text('Transaction Details',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      itemBox('images/png_bag.png'),
                      itemBox('images/png_shoe.png'),
                      itemBox('images/png_shirt.png')
                    ],
                  )),
                  SizedBox(height: 20.0),
                  Container(
                    child: Text('Product Type',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: 20.0),
                  productType(),
                  SizedBox(height: 10.0),
                  detailsContainer()
                ]))));
  }

  Widget itemBox(String image) {
    return Container(
        padding: EdgeInsets.all(7),
        height: 60,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Image.asset(image, height: 45));
  }

  Widget productType() {
    return Container(
      padding: EdgeInsets.all(10),
      height: 100,
      width: 230,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('Shoes',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600)),
                Text('-',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w300)),
                Text('10',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w300))
              ]),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('Bags',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600)),
                Text('-',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w300)),
                Text('5',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w300))
              ]),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('Mouse',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600)),
                Text('-',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w300)),
                Text('5',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w300))
              ])
        ],
      )),
    );
  }

  Widget detailsContainer() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 65, vertical: 20),
        child: Column(children: <Widget>[
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Buyer:',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white)),
                Text('Paul124', style: TextStyle(color: Colors.white))
              ]),
          SizedBox(height: 10),
          Divider(color: Colors.white),
          SizedBox(height: 10),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Billing Adress:',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white)),
                Text('', style: TextStyle(color: Colors.white))
              ]),
          SizedBox(height: 10),
          Divider(color: Colors.white),
          SizedBox(height: 10),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Amount:',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white)),
                Text('', style: TextStyle(color: Colors.white))
              ]),
          SizedBox(height: 10),
          Divider(color: Colors.white),
          SizedBox(height: 10),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Payment Mode:',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white)),
                Text('Card', style: TextStyle(color: Colors.white))
              ]),
          SizedBox(height: 10),
          Divider(color: Colors.white),
          SizedBox(height: 10),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Delivery Agent:',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white)),
                Text('Paul', style: TextStyle(color: Colors.white))
              ]),
          SizedBox(height: 10),
          Divider(color: Colors.white),
          SizedBox(height: 10),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Delivery Status:',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white)),
                Text('Pending', style: TextStyle(color: Colors.white))
              ]),
          SizedBox(height: 10),
          Divider(color: Colors.white),
          SizedBox(height: 10),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Review/Feedback:',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white)),
                Text('Very well', style: TextStyle(color: Colors.white))
              ]),
          SizedBox(height: 10),
          Divider(color: Colors.white),
          SizedBox(height: 10),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Rating:',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white)),
                Text('', style: TextStyle(color: Colors.white))
              ])
        ]));
  }
}
