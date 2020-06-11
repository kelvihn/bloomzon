import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:bloomzon/sellers/delivery_status.dart';
import 'package:bloomzon/sellers/wallet_transaction.dart';

class DeliveryStatus extends StatefulWidget {
  @override
  _DeliveryStatusState createState() => _DeliveryStatusState();
}

class _DeliveryStatusState extends State<DeliveryStatus> {
  List<String> _locations = [
    'Packaged',
    'Recieved',
    'On Transit',
    'Ware house'
  ]; // Option 2
  String _selectedLocation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF2B2950),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          firstBox(),
          SizedBox(height: 20),
          ratingBox(),
          SizedBox(height: 5),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text("Total Goods On Transit",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 12)),
                Text("Total Goods Delivered",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 12)),
              ]),
          SizedBox(height: 20),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Center(
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                    buildCatalogueBox(),
                    SizedBox(width: 5),
                    editBtn()
                  ]))),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Center(
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                    buildCatalogueBox(),
                    SizedBox(width: 5),
                    editBtn()
                  ])))
        ])));
  }

  Widget requestBox() {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                  child: Center(
                child: Text(
                  'Request Cash-out',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              )),
              SizedBox(height: 15),
              action('Amount'),
              SizedBox(height: 25),
              action('Narration'),
              SizedBox(height: 35),
              smallBtn(),
            ]));
  }

  Widget buildCatalogueBox() {
    return Container(
        height: 120,
        padding: EdgeInsets.all(8),
        //margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        width: MediaQuery.of(context).size.width * 0.70,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset('images/png_bag.png', height: 40),
            VerticalDivider(),
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text('Billing Address:',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600)),
                        SizedBox(width: 4),
                        Text('Wuse 2 Abuja',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.w300))
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text('Phone No:',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600)),
                        SizedBox(width: 4),
                        Text('09038825588',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w300))
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text('Amount:',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600)),
                        SizedBox(width: 4),
                        Text('2,000',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w300))
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text('Delivery Agent:',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600)),
                        SizedBox(width: 4),
                        Text('Paul218',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.w300))
                      ]),
                ]),
          ],
        ));
  }

  Widget editBtn() {
    return Container(
        padding: EdgeInsets.all(5),
        height: 80,
        width: 80,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: DropdownButton(
            isExpanded: true,
            iconDisabledColor: Colors.white,
            iconEnabledColor: Colors.white,
            underline: SizedBox.shrink(),

            hint: Text(
              'Edit \nStatus',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ), // Not necessary for Option 1
            value: _selectedLocation,
            onChanged: (newValue) {
              setState(() {
                _selectedLocation = newValue;
              });
            },
            items: _locations.map((location) {
              return DropdownMenuItem(
                child: new Text(location),
                value: location,
              );
            }).toList(),
          ),
        ));
  }

  Widget transactionId() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Transaction ID',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  )),
              SizedBox(height: 10),
              Container(
                  padding: EdgeInsets.only(left: 20),
                  width: 300,
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.white, width: 1)),
                  child: Center(
                      child: TextField(
                          decoration:
                              InputDecoration.collapsed(hintText: '')))),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: Text('Track your product',
                    style: TextStyle(fontSize: 14, color: Colors.grey[50])),
              )
            ]));
  }

  Widget startBtn() {
    return Container(
        width: 150,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.white, width: 1)),
        child: Center(
            child: Text('START',
                style: TextStyle(
                  color: Colors.white,
                ))));
  }

  Widget scoreBox() {
    return Container(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircularPercentIndicator(
                  radius: 100.0,
                  lineWidth: 5.0,
                  backgroundColor: Color(0xFF545280),
                  percent: 0.09,
                  center: Text("9",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                  progressColor: Colors.green,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircularPercentIndicator(
                  radius: 100.0,
                  lineWidth: 5.0,
                  backgroundColor: Color(0xFF545280),
                  percent: 0.02,
                  center: Text("2",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                  progressColor: Colors.green,
                ),
                SizedBox(height: 10),
                Text("Total Goods \n On Transit",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16)),
              ],
            )
          ]),
    );
  }

  Widget smallBtn() {
    return GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => WalletTransaction()));
        },
        child: Container(
            // margin: EdgeInsets.only(left: 50),
            height: 40,
            width: 120,
            decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.white, width: 2)),
            child: Center(
                child: Text('SUBMIT',
                    style: TextStyle(fontSize: 12, color: Colors.white)))));
  }

  Widget action(String text) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(text,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 16)),
          SizedBox(width: 10),
          actionBar()
        ]);
  }

  Widget actionBar() {
    return Container(
      alignment: Alignment.centerRight,
      height: 35,
      width: 220,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
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
      ),
    );
  }

  Widget firstBox() {
    return Stack(
      children: <Widget>[
        Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 60),
            height: 120,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                )),
            child: Center(
              child: Text(
                'Your Product Delivery Status',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
                textAlign: TextAlign.center,
              ),
            )),
        Positioned(
            top: 30,
            left: 8,
            child: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.of(context).pop())),
        Positioned(
            top: 30,
            right: 8,
            child: IconButton(
                icon: Icon(AntDesign.close, color: Colors.white),
                onPressed: () => Navigator.of(context).pop()))
      ],
    );
  }

  Widget ratingBox() {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.symmetric(vertical: 10),
      height: 130,
      decoration: BoxDecoration(
          color: Color(0xFF4B496A), borderRadius: BorderRadius.circular(5)),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            CircularPercentIndicator(
              radius: 100.0,
              lineWidth: 5.0,
              backgroundColor: Color(0xFF545280),
              percent: 0.09,
              center: Text("9",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
              progressColor: Colors.green,
            ),
            CircularPercentIndicator(
              radius: 100.0,
              lineWidth: 5.0,
              backgroundColor: Color(0xFF545280),
              percent: 0.02,
              center: Text("2",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
              progressColor: Colors.green,
            ),
          ]),
    );
  }

  Widget largeBtn() {
    return GestureDetector(
        onTap: () {},
        child: Container(
            padding: EdgeInsets.all(5),
            // margin: EdgeInsets.only(left: 50),
            height: 35,
            // width: 150,
            decoration: BoxDecoration(
                //color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.white, width: 2)),
            child: Center(
                child: Text('Delivery Status',
                    style: TextStyle(fontSize: 12, color: Colors.white)))));
  }
}
