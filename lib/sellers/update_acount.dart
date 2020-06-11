import 'package:flutter/material.dart';
import 'package:bloomzon/sellers/verify_account.dart';

class UpdateAccount extends StatefulWidget {
  @override
  _UpdateAccountState createState() => _UpdateAccountState();
}

class _UpdateAccountState extends State<UpdateAccount> {
  List<String> _locations = [
    'Zenith Bank',
    'Skye Bank',
    'UBA',
    'Eco Bank',
    'FCMB',
    'First Bank'
  ];
  String _selectedLocation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Stack(children: <Widget>[
                  firstBox(),
                  Positioned(
                    top: 40,
                    left: 10,
                    child: IconButton(
                        icon: Icon(Icons.arrow_back, color: Colors.white),
                        onPressed: () => Navigator.of(context).pop()),
                  ),
                  Positioned(
                      top: 140,
                      left: 0,
                      right: 0,
                      child: Text(
                        'Update Your Account Details',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                        textAlign: TextAlign.center,
                      ))
                ]),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'images/card.png',
                          height: 120,
                        ),
                        SizedBox(height: 10),
                        buildBankEntry(),
                        buildOtherBank(),
                        buildAccEntry(),
                        buildNumEntry(),
                      ]),
                ),
                SizedBox(height: 30),
                GestureDetector(
                    onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => VerifyAccount())),
                    child: saveBtn())
              ]),
        )));
  }

  Widget firstBox() {
    return Container(
        height: 200,
        decoration: BoxDecoration(
            color: Colors.blue[900],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(5),
            )));
  }

  Widget bankEntry() {
    return Container(
        padding: EdgeInsets.only(left: 5, right: 30),
        //margin: EdgeInsets.only(right: 20),
        height: 45,
        width: 210,
        decoration: BoxDecoration(
            color: Colors.white,
            // border: Border.all(width: 0.5, color: Colors.black87),
            borderRadius: BorderRadius.circular(5)),
        child: DropdownButton(
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
        ));
  }

  Widget dropDown() {
    return Container(
        child: DropdownButton(
      hint: Text('Please choose a location'), // Not necessary for Option 1
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
        child: TextField(
            decoration: InputDecoration.collapsed(hintText: '00000000000')));
  }

  Widget buildBankEntry() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Bank',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  )),
              SizedBox(width: 15),
              bankEntry()
            ]));
  }

  Widget buildAccEntry() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Account Number',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  )),
              SizedBox(height: 5),
              otherEntry()
            ]));
  }

  Widget buildNumEntry() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Mobile Number',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  )),
              SizedBox(height: 5),
              otherEntry()
            ]));
  }

  Widget otherBank() {
    return Container(
        padding: EdgeInsets.only(left: 5),
        height: 45,
        width: 260,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 0.5, color: Colors.black87),
            borderRadius: BorderRadius.circular(5)),
        child: TextField(
          decoration: InputDecoration.collapsed(hintText: ''),
        ));
  }

  Widget buildOtherBank() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Other bank',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  )),
              SizedBox(height: 5),
              otherBank()
            ]));
  }

  Widget saveBtn() {
    return Container(
        margin: EdgeInsets.only(bottom: 20),
        height: 50,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.red[900],
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
            child: Text('SAVE',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 16))));
  }
}
