import 'package:bloomzon/agents/verify-success.dart';
import 'package:flutter/material.dart';

class VerificationFiles extends StatefulWidget {
  final String category;

  const VerificationFiles({Key key, this.category}) : super(key: key);
  @override
  _VerificationFilesState createState() => _VerificationFilesState();
}

class _VerificationFilesState extends State<VerificationFiles> {
  List<String> _locations = [
    'Zenith Bank',
    'Skye Bank',
    'UBA',
    'Eco Bank',
    'FCMB',
    'First Bank'
  ];
  String _selectedLocation;
  List<String> _locations2 = [
    'Valid ID card',
    'International Passport',
    'National ID',
  ];
  String _selectedLocation2;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
                child: Column(
      children: [
        firstBox(),
        contentBox(),
        SizedBox(
          height: 30,
        ),
      ],
    ))));
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
              Text('Complete Your Account',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600))
            ])));
  }

  Widget contentBox() {
    return Container(
        child: Column(
      children: [
        Container(
          height: 450,
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
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                dropBox(),
                bankEntry(),
                buildAccEntry('No.'),
                buildAccEntry('Name')
              ])),
        ),
        SizedBox(
          height: 30,
        ),
        GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => VerifySuccess()));
            },
            child: saveBtn('SUBMIT'))
      ],
    ));
  }

  Widget bankEntry() {
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
              Text('Bank Details',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  )),
              SizedBox(height: 8),
              DropdownButton(
                isExpanded: true,
                hint: Text('Select Bank'), // Not necessary for Option 1
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
      hint: Text('Select any valid means of ID'), // Not necessary for Option 1
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

  Widget otherEntry() {
    return Container(
        padding: EdgeInsets.only(left: 5),
        height: 45,
        width: 260,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 0.5, color: Colors.black87),
            borderRadius: BorderRadius.circular(5)),
        child: TextField(decoration: InputDecoration.collapsed(hintText: '')));
  }

  Widget buildBankEntry() {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Bank',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  )),
              SizedBox(height: 15),
              bankEntry()
            ]));
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

  Widget buildAccEntry(String name) {
    return Container(
        width: 260,
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Account $name',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  )),
              SizedBox(height: 5),
              otherEntry()
            ]));
  }

  Widget dropBox() {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Means of Verification',
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
