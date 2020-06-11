import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class ManufacturersTransactionDetails extends StatefulWidget {
  @override
  _ManufacturersTransactionDetailsState createState() =>
      _ManufacturersTransactionDetailsState();
}

class _ManufacturersTransactionDetailsState
    extends State<ManufacturersTransactionDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.blue[900],
            body: SingleChildScrollView(
                child: Column(children: <Widget>[
              firstBox(),
              serviceDescBox(),
              contentBox()
            ]))));
  }

  Widget firstBox() {
    return Stack(
      children: <Widget>[
        Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 60),
            height: 130,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                )),
            child: Center(
              child: Text(
                'Transaction Details',
                style: TextStyle(
                    color: Colors.blue[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
                textAlign: TextAlign.center,
              ),
            )),
        Positioned(
            top: 30,
            left: 8,
            child: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.blue[900]),
                onPressed: () => Navigator.of(context).pop())),
        Positioned(
            top: 30,
            right: 8,
            child: IconButton(
                icon: Icon(AntDesign.close, color: Colors.blue[900]),
                onPressed: () => Navigator.of(context).pop()))
      ],
    );
  }

  Widget serviceDescBox() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text('Service \nDescription',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 16)),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                // height:100,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                    child: Text(
                        'Type Semi automatic, Automatic; Water source, river water,open well water,municipal water supply, borewell water, Purification capacity 10000 L/hour',
                        style:
                            TextStyle(color: Colors.blue[900], fontSize: 14))))
          ],
        ));
  }

  Widget contentBox() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        height: 250,
        child: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('Consultant',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500)),
                borderBtn('Glory')
              ],
            ),
            Divider(color: Colors.white),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('Supply Request',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500)),
                borderBtn('4 Bags')
              ],
            ),
            Divider(color: Colors.white),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('Payment Method',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500)),
                borderBtn('Transfer')
              ],
            ),
            Divider(color: Colors.white),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('Amount',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500)),
                borderBtn('4,000,000')
              ],
            ),
            Divider(color: Colors.white),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('Date',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500)),
                borderBtn('01/02/2020')
              ],
            ),
            Divider(color: Colors.white),
          ],
        )));
  }

  Widget borderBtn(String text) {
    return Container(
        padding: EdgeInsets.all(5),
        height: 30,
        width: 100,
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.white),
            borderRadius: BorderRadius.circular(5)),
        child: Center(
            child: Text(text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ))));
  }
}
