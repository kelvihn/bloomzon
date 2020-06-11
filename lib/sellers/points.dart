import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:pie_chart/pie_chart.dart';

class PointScreen extends StatefulWidget {
  @override
  _PointScreenState createState() => _PointScreenState();
}

class _PointScreenState extends State<PointScreen> {
  Map<String, double> dataMap = new Map();
  List<Color> colorList = [
    Colors.blue[900],
    Colors.red[900],
  ];
  List<String> _locations = [
    'Moved to warehouse',
    'Out of stock',
    'Packaged',
    'Size not available',
    'Delivered'
  ]; // Option 2
  String _selectedLocation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dataMap.putIfAbsent("Earned Points", () => 5);
    dataMap.putIfAbsent("Used Points", () => 3);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            // bottomNavigationBar: bottomNavBar(),
            backgroundColor: Colors.grey[100],
            body: SingleChildScrollView(
                child: Column(children: <Widget>[
              Container(
                height: 270,
                child: Stack(children: <Widget>[
                  Positioned(top: 0, child: firstBox()),
                  Positioned(top: 120, right: 0, left: 0, child: accountInfo()),
                ]),
              ),
              startShopping(),
              SizedBox(height: 20),
              pointsBox(),
              SizedBox(height: 20),
              detailsTable(),
              SizedBox(height: 20),
            ]))));
  }

  Widget divider() {
    return Container(height: 1, color: Colors.grey);
  }

  Widget action() {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Action',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 16)),
          SizedBox(width: 10),
          actionBar()
        ]);
  }

  Widget detailsTable() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 220,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        child: Center(
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      "MONTH",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 8),
                      textAlign: TextAlign.center,
                      //textAlign: TextAlign.center,
                    ),
                    Divider(color: Colors.grey),
                    Text(
                      "April",
                      style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.w600,
                          fontSize: 8),
                      textAlign: TextAlign.center,
                    ),
                    Divider(),
                    Text(
                      "March",
                      style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.w600,
                          fontSize: 8),
                      textAlign: TextAlign.center,
                    ),
                  ]),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      "TOTAL PURCHASE",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 8),
                      textAlign: TextAlign.center,
                      //textAlign: TextAlign.center,
                    ),
                    Divider(),
                    Text(
                      "40",
                      style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.w600,
                          fontSize: 8),
                      textAlign: TextAlign.center,
                    ),
                    Divider(),
                    Text(
                      "40",
                      style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.w600,
                          fontSize: 8),
                      textAlign: TextAlign.center,
                    ),
                  ]),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      "POINTS EARNED",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 8),
                      textAlign: TextAlign.center,
                    ),
                    Divider(),
                    Text(
                      "400",
                      style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.w600,
                          fontSize: 8),
                      textAlign: TextAlign.center,
                    ),
                    Divider(),
                    Text(
                      "400",
                      style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.w600,
                          fontSize: 8),
                      textAlign: TextAlign.center,
                    ),
                  ]),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      "AVAILABLE POINTS",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 8),
                      textAlign: TextAlign.center,
                    ),
                    Divider(),
                    Text(
                      "8",
                      style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.w600,
                          fontSize: 8),
                      textAlign: TextAlign.center,
                    ),
                    Divider(),
                    Text(
                      "8",
                      style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.w600,
                          fontSize: 8),
                      textAlign: TextAlign.center,
                    ),
                  ]),
            ])));
  }

  Widget actionBar() {
    return Container(
        alignment: Alignment.centerRight,
        height: 35,
        width: 200,
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
        child: smallBox());
  }

  Widget smallBox() {
    return Container(
      height: 35,
      width: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.grey[50]),
      child: Container(
          height: 50,
          width: 200,
          decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15))),
          child: Center(
            child: DropdownButton(
              itemHeight: 50,
              underline: SizedBox.shrink(),
              isDense: true,
              //  hint: Text('Please choose a location'), // Not necessary for Option 1
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
          )),
    );
  }

  Widget firstBox() {
    return Stack(
      children: <Widget>[
        Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 10),
            height: 170,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.red[900],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                )),
            child: Center(
              child: Text(
                'MY POINTS',
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
                onPressed: () => Navigator.of(context).pop()))
      ],
    );
  }

  Widget accountInfo() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Container(
            width: 220,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10.0, // soften the shadow
                  spreadRadius: 2.0, //extend the shadow
                  offset: Offset(
                    0.0, // Move to right 10  horizontally
                    0.0, // Move to bottom 10 Vertically
                  ),
                )
              ],
            ),
            child: Center(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(MaterialIcons.stars,
                        size: 75, color: Colors.blue[900]),
                    SizedBox(width: 25),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('400',
                            style: TextStyle(
                                color: Colors.blue[900],
                                fontWeight: FontWeight.bold,
                                fontSize: 25)),
                        SizedBox(height: 8),
                        Text("Total Points Available",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w600,
                                fontSize: 16)),
                      ],
                    )
                  ]),
            )));
  }

  Widget startShopping() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 120,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
              Text(
                "Purchase 10 products to earn 100 points",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 5),
              Container(
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: RaisedButton(
                          color: Colors.red[900],
                          onPressed: () {},
                          child: Text('Start Shopping',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              )))))
            ])));
  }

  Widget pointsBox() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 150,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        child: Center(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text("Earned Points:",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 16)),
                        Text("1,000",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w300,
                                fontSize: 16))
                      ]),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text("Used Points:",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 16)),
                        Text("600",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w300,
                                fontSize: 16))
                      ]),
                ],
              ),
              Container(
                  child: PieChart(
                dataMap: dataMap,
                animationDuration: Duration(milliseconds: 800),
                colorList: colorList,
                chartRadius: 100,
                showChartValuesInPercentage: false,
                showChartValues: false,
                showChartValuesOutside: false,
                showChartValueLabel: false,
                showLegends: false,
              ))
            ])));
  }

  Widget mainDetailsCon() {
    return Container(
        height: 130,
        //width: 220,
        margin: EdgeInsets.symmetric(horizontal: 15),
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: Colors.white),
        child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      "PRODUCT ID",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                      //
                    ),
                    Text(
                      "ADDRESS",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                      //textAlign: TextAlign.center,
                    ),
                    Text(
                      "QUANTITY",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                      //
                    ),
                    Text(
                      "AMOUNT",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                      //
                    ),
                    Text(
                      "METHOD",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                      //
                    ),
                  ]),
              Divider(),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      "CBB141",
                      style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.w600,
                          fontSize: 12),
                    ),
                    Container(
                      width: 70,
                      child: Text(
                        "Wuse 2, Abuja FCT",
                        style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.w600,
                            fontSize: 12),
                      ),
                    ),
                    Text(
                      "6",
                      style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.w600,
                          fontSize: 12),
                    ),
                    Text(
                      "24,000",
                      style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.w600,
                          fontSize: 12),
                    ),
                    Text(
                      "Card",
                      style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.w600,
                          fontSize: 12),
                    ),
                  ])
            ])));
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
              Icon(Icons.notifications, color: Colors.black87),
              SizedBox(height: 3.0),
              Text('Home',
                  style: TextStyle(color: Colors.black87, fontSize: 12))
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.account_circle, color: Colors.black87),
              SizedBox(height: 3.0),
              Text('Account',
                  style: TextStyle(color: Colors.black87, fontSize: 12))
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.mail, color: Colors.black87),
              SizedBox(height: 3.0),
              Text('Messages',
                  style: TextStyle(color: Colors.black87, fontSize: 12))
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.exit_to_app, color: Colors.black87),
              SizedBox(height: 3.0),
              Text('Logout',
                  style: TextStyle(color: Colors.black87, fontSize: 12))
            ],
          )
        ],
      ),
    );
  }

  /*
  Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                   
                    SizedBox(height: 30),
                    Container(
                      width: 70,
                      child:
                    )
                  ]),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                   
                    SizedBox(height: 30),
                    Container(
                      width: 70,
                      child:
                    )
                  ]),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                   
                    SizedBox(height: 30),
                    Container(
                      width: 70,
                      child: 
                    )
                  ]),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                   
                    SizedBox(height: 30),
                    Container(
                      width: 70,
                      child: 
                    )
                  ])
            ])
            */
}
