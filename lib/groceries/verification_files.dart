import 'package:bloomzon/groceries/register_success.dart';
import 'package:flutter/material.dart';

class GroceryVerificationFiles extends StatefulWidget {
  @override
  _GroceryVerificationFilesState createState() =>
      _GroceryVerificationFilesState();
}

class _GroceryVerificationFilesState extends State<GroceryVerificationFiles> {
  List<String> _locations = ['Fast Food', 'Groceries Seller'];
  String _selectedLocation;
  List<String> _locations2 = [
    'Professional Rider',
    'Bloomzon Rider',
  ];
  String _selectedLocation2;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
                child: Column(children: [firstBox(), contentBox()]))));
  }

  Widget chooseFileBox() {
    return Container(
        height: 35,
        // width: 280,
        padding: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(width: 1, color: Colors.grey)),
        child: Row(children: <Widget>[
          Container(
              height: 35,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                  child: Text('Choose File',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w600)))),
          SizedBox(width: 20),
          Text('No file chosen',
              style: TextStyle(
                color: Colors.grey,
              ))
        ]));
  }

  Widget fileRow(String topic) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(topic,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          chooseFileBox(),
        ]);
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

  Widget firstBox() {
    return Stack(children: <Widget>[
      Container(
          width: MediaQuery.of(context).size.width,
          height: 130,
          decoration: BoxDecoration(
              //color: Colors.blue[900].withOpacity(),
              image: DecorationImage(
                  image: AssetImage('images/not_bg.png'), fit: BoxFit.cover))),
      Container(
          width: MediaQuery.of(context).size.width,
          height: 130,
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 40),
          // color: Colors.blue[900],
          child: Center(
              child: Text(
            'To successfully complete your account fill the info below',
            style: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          )))
    ]);
  }

  Widget contentBox() {
    return Container(
        height: 600,
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
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: ListView(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              buildColumnEntry('Address', ''),
              buildRowEntry('State', ''),
              buildRowEntry('Region', ''),
              dropBox(),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    fileRow('Service Catalogue'),
                    //  SizedBox(height: 5),
                    Text('(options)', style: TextStyle(fontSize: 12)),
                  ]),
              dropBox2(),
              fileRow('Means of Identification'),
              SizedBox(height: 15),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => GrocerySuccess()));
                        },
                        child: saveBtn('SUBMIT'))
                  ]),
              SizedBox(height: 15),
            ]));
  }

  Widget otherEntry(String hintText) {
    return Container(
        padding: EdgeInsets.only(left: 5),
        height: 35,
        width: 260,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 0.5, color: Colors.black87),
            borderRadius: BorderRadius.circular(5)),
        child: TextField(
            decoration: InputDecoration.collapsed(hintText: hintText)));
  }

  Widget dropBox() {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Service Type:',
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

  Widget dropBox2() {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Means of Delivery',
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
                child: dropDown2(),
              )
            ]));
  }

  Widget dropDown2() {
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

  Widget dropDown() {
    return Container(
        child: DropdownButton(
      hint: Text(''), // Not necessary for Option 1
      value: _selectedLocation,
      isExpanded: true,
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

  Widget buildColumnEntry(String name, String hintText) {
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
                    fontSize: 14,
                  )),
              SizedBox(height: 5),
              otherEntry(hintText),
            ]));
  }

  Widget buildRowEntry(String name, String hintText) {
    return Container(
        width: 260,
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(name,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  )),
              SizedBox(width: 5),
              otherEntry2(hintText),
            ]));
  }

  Widget otherEntry2(String hintText) {
    return Container(
        padding: EdgeInsets.only(left: 5),
        height: 35,
        width: 200,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 0.5, color: Colors.black87),
            borderRadius: BorderRadius.circular(5)),
        child: TextField(
            decoration: InputDecoration.collapsed(hintText: hintText)));
  }
}
