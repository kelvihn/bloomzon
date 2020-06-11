import 'package:flutter/material.dart';

class NewAdvert extends StatefulWidget {
  @override
  _NewAdvertState createState() => _NewAdvertState();
}

class _NewAdvertState extends State<NewAdvert> {
  List<String> _locations = [
    'Header',
    'Middle',
    'Footer',
  ]; // Option 2
  String _selectedLocation;
  List<String> _locations2 = [
    '14 days',
    '30 days',
    '3 months',
    '6 months'
  ]; // Option 2
  String _selectedLocation2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: SingleChildScrollView(
            child: Column(children: <Widget>[firstBox(), contentBox()])));
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
                'START YOUR ADS MARKETING',
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
      ],
    );
  }

  Widget dropdownBtn2(String text) {
    return Container(
        alignment: Alignment.centerRight,
        padding: EdgeInsets.symmetric(horizontal: 8),
        height: 45,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white,
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
            borderRadius: BorderRadius.circular(5),
            border: Border.all(width: 0.5, color: Colors.grey)),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(text,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w500)),
              SizedBox(width: 5),
              DropdownButton(
                itemHeight: 50,
                underline: SizedBox.shrink(),
                isDense: true,
                //  hint: Text('Please choose a location'), // Not necessary for Option 1
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
            ]));
  }

  Widget chooseFileBox() {
    return Container(
        height: 40,
        width: 280,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(width: 1, color: Colors.grey)),
        child: Row(children: <Widget>[
          Container(
              height: 40,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.grey,
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

  Widget dropdownBtn(String text) {
    return Container(
        alignment: Alignment.centerRight,
        padding: EdgeInsets.symmetric(horizontal: 8),
        height: 45,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white,
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
            borderRadius: BorderRadius.circular(5),
            border: Border.all(width: 0.5, color: Colors.grey)),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(text,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w500)),
              SizedBox(width: 5),
              DropdownButton(
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
            ]));
  }

  Widget contentBox() {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.85,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: Colors.white),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Welcome',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  )),
              SizedBox(height: 25),
              dropdownBtn('Select Page Section'),
              SizedBox(height: 25),
              dropdownBtn2('Duration'),
              SizedBox(height: 25),
              Text('Add Ads Banner',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  )),
              SizedBox(height: 25),
              chooseFileBox(),
              SizedBox(height: 5),
              Container(
                alignment: Alignment.centerRight,
                child: Text('(Maximum of 3 files)',
                    style: TextStyle(color: Colors.grey, fontSize: 12)),
              ),
              SizedBox(height: 25),
              Text('URL',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  )),
              SizedBox(height: 20),
              Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
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
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 0.5, color: Colors.grey)),
                  child: TextField(
                      decoration: InputDecoration.collapsed(hintText: ''))),
              SizedBox(height: 50),
              Container(alignment: Alignment.center, child: smallBtn())
            ]));
  }

  Widget smallBtn() {
    return GestureDetector(
        onTap: () {},
        child: Container(
            // margin: EdgeInsets.only(left: 50),

            height: 50,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.red[900],
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.white, width: 2)),
            child: Center(
                child: Text('Save & proceed to pay',
                    style: TextStyle(fontSize: 14, color: Colors.white)))));
  }
}
