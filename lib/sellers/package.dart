import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Package extends StatefulWidget {
  @override
  _PackageState createState() => _PackageState();
}

class _PackageState extends State<Package> {
  List<String> _locations = [
    'Monthly',
    'Half Year',
    'Full Year',
  ]; // Option 2
  String _selectedLocation;
  List<String> _locations2 = [
    'Monthly',
    'Half Year',
    'Full Year',
  ]; // Option 2
  String _selectedLocation2;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Stack(children: <Widget>[
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/bg.jpg'), fit: BoxFit.cover)),
      ),
      Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [
                0.1,
                0.4,
                0.7,
                0.9
              ],
                  colors: [
                Colors.white.withOpacity(.9),
                Colors.white.withOpacity(.9),
                Colors.white.withOpacity(.9),
                Colors.white.withOpacity(.9),
              ])),
          child: Column(children: <Widget>[
            firstBox(),
            SizedBox(height: 30),
            packageBox(),
            SizedBox(height: 30),
            action1('Renewal Plan'),
            SizedBox(height: 20),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      action2('Withdrawal Plan'),
                    ])),
            SizedBox(height: 120),
            createBtn()
          ]))
    ])));
  }

  Widget packageBox() {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 100,
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
        child: Center(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
              Text('Package',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600)),
              SizedBox(width: 15),
              RaisedButton(
                  color: Colors.blue[900],
                  onPressed: () {},
                  child: Text('Premium', style: TextStyle(color: Colors.white)))
            ])));
  }

  Widget createBtn() {
    return Container(
        padding: EdgeInsets.all(5),
        // margin: EdgeInsets.only(left: 50),
        height: 40,
        width: 150,
        decoration: BoxDecoration(
          color: Colors.red[900],
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
            child: Text('SAVE',
                style: TextStyle(fontSize: 14, color: Colors.white))));
  }

  Widget action1(String text) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 100,
            child: Text(text,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 16)),
          ),
          SizedBox(width: 10),
          actionBar1()
        ]);
  }

  Widget action2(String text) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 100,
            child: Text(text,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 16)),
          ),
          SizedBox(width: 10),
          actionBar2()
        ]);
  }

  Widget actionBar2() {
    return Container(
      alignment: Alignment.centerRight,
      height: 35,
      width: 200,
      padding: EdgeInsets.only(left: 20),
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
      child: DropdownButton(
        itemHeight: 50,
        isExpanded: true,
        underline: SizedBox.shrink(),
        isDense: true,
        hint: Text('Select Plan'), // Not necessary for Option 1
        value: _selectedLocation2,
        onChanged: (newValue) {
          setState(() {
            _selectedLocation2 = newValue;
          });
        },
        items: _locations2.map((location) {
          return DropdownMenuItem(
            child: new Text(location),
            value: location,
          );
        }).toList(),
      ),
    );
  }

  Widget actionBar1() {
    return Container(
      alignment: Alignment.centerRight,
      height: 35,
      width: 200,
      padding: EdgeInsets.only(left: 20),
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
      child: DropdownButton(
        itemHeight: 50,
        isExpanded: true,
        underline: SizedBox.shrink(),
        isDense: true,
        hint: Text('Select Plan'), // Not necessary for Option 1
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
    );
  }

  Widget smallBox() {
    return Container(
        height: 35,
        width: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: Colors.grey),
        child: Icon(Icons.arrow_drop_down, color: Colors.white));
  }

  Widget firstBox() {
    return Stack(
      children: <Widget>[
        Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 60, bottom: 25),
            height: 200,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                )),
            child: Center(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                  Text('Your Package',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                  SizedBox(height: 10),
                  Icon(AntDesign.gift, size: 75, color: Colors.white)
                ]))),
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
}
