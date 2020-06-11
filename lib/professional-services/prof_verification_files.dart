import 'package:bloomzon/Initial-pages/account-succesful.dart';
import 'package:bloomzon/professional-services/proservicedashboard.dart';
import 'package:flutter/material.dart';

class ProfVerificationFiles extends StatefulWidget {
  final String category;

  const ProfVerificationFiles({Key key, this.category}) : super(key: key);
  @override
  _ProfVerificationFilesState createState() => _ProfVerificationFilesState();
}

class _ProfVerificationFilesState extends State<ProfVerificationFiles> {
  List<String> _locations = [
    'USD',
    'EUR',
    'Pound',
  ];
  String _selectedLocation;
  List<String> _locations2 = [
    'Fashion Designer',
    'Contractor',
    'Lawyer',
    'Engineer',
  ];
  String _selectedLocation2;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Stack(children: <Widget>[
                  firstBox(),
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 180,
                    child: contentBox(),
                  ),
                  Positioned(
                      left: 10,
                      top: 20,
                      child: IconButton(
                          icon: Icon(Icons.arrow_back, color: Colors.white),
                          onPressed: () => Navigator.of(context).pop()))
                ]))));
  }

  Widget firstBox() {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 200,
        padding: EdgeInsets.symmetric(vertical: 50),
        color: Colors.blue[900],
        child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
              Image.asset('images/logo.png', height: 50),
              Text('Setup Your Professional Account',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600))
            ])));
  }

  Widget contentBox() {
    return Container(
      height: 550,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.symmetric(horizontal: 20),
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
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
          child: ListView(padding: EdgeInsets.zero,
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
            SizedBox(height: 12),
            dropBox(),
            SizedBox(height: 12),
            buildAccEntry('Username', 'Enter Username'),
            SizedBox(height: 12),
            buildAccEntry('Password', 'Minimum of 8 characters'),
            SizedBox(height: 12),
            currencyEntry(),
            SizedBox(height: 17),
            GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => AccountSuccess(category: widget.category))),
                child: saveBtn('NEXT')),
            SizedBox(height: 30),
          ])),
    );
  }

  Widget currencyEntry() {
    return Container(
        padding: EdgeInsets.only(left: 5, right: 30),
        //margin: EdgeInsets.only(right: 20),
        height: 80,
        width: 300,
        decoration: BoxDecoration(
            color: Colors.white,
            // border: Border.all(width: 0.5, color: Colors.black87),
            borderRadius: BorderRadius.circular(5)),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Currency Operation',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  )),
              SizedBox(height: 8),
              DropdownButton(
                isExpanded: true,
                hint: Text('Choose Currency'), // Not necessary for Option 1
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
              )
            ]));
  }

  Widget dropDown() {
    return Container(
        child: DropdownButton(
      hint: Text('Select active profile type'), // Not necessary for Option 1
      value: _selectedLocation2,
      isExpanded: true,
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
    ));
  }

  Widget otherEntry(String hintText) {
    return Container(
        padding: EdgeInsets.only(left: 5),
        height: 45,
        width: 260,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 0.5, color: Colors.black87),
            borderRadius: BorderRadius.circular(5)),
        child: TextField(
            decoration: InputDecoration.collapsed(hintText: hintText)));
  }

  Widget saveBtn(String text) {
    return Container(
        margin: EdgeInsets.only(bottom: 20),
        height: 50,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.red[900],
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
            child: Text(text,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 16))));
  }

  Widget buildAccEntry(String name, String hintText) {
    return Container(
        width: 260,
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(name,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  )),
              SizedBox(height: 5),
              otherEntry(hintText)
            ]));
  }

  Widget dropBox() {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Select active profile type',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  )),
              SizedBox(height: 5),
              Container(
                height: 50,
                width: 300,
                padding: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black54),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: dropDown(),
              )
            ]));
  }
}
