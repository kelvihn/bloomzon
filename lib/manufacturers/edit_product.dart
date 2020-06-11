import 'package:flutter/material.dart';

class ViewProduct extends StatefulWidget {
  @override
  _ViewProductState createState() => _ViewProductState();
}

class _ViewProductState extends State<ViewProduct> {
  List<String> _locations = ['N', "\$"]; // Option 2
  String _selectedLocation;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.grey[200],
            body: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                  firstBox(),
                  imageContainer(),
                  descBox(),
                  currencyBox(),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[redBtn()])
                ]))));
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
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                )),
            child: Center(
              child: Text(
                'Water Supply Machine',
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

  Widget imageContainer() {
    return Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Center(
            child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            imageBox('images/watermachine1.jpg'),
            imageBox('images/watermachine2.jpg'),
            imageBox('images/watermachine3.jpg'),
          ],
        )));
  }

  Widget currencyBox() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Amount', style: TextStyle(fontWeight: FontWeight.w600)),
              SizedBox(height: 10),
              Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: 40,
                          width: 130,
                          child: TextField(
                              decoration:
                                  InputDecoration.collapsed(hintText: '')),
                        ),
                        Container(
                            padding: EdgeInsets.only(left: 10),
                            height: 40,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.grey[300]),
                            child: Center(
                              child: DropdownButton(
                                hint: Text('N',
                                    style: TextStyle(color: Colors.grey)),
                                iconDisabledColor: Colors.white,
                                itemHeight: 50,
                                underline: SizedBox.shrink(),
                                isExpanded: true,
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
                      ]))
            ]));
  }

  Widget redBtn() {
    return GestureDetector(
        onTap: () {},
        child: Container(
            height: 35,
            width: 120,
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.red[900]),
            child: Center(
                child: Text('SAVE',
                    style: TextStyle(color: Colors.white, fontSize: 14)))));
  }

  Widget descBox() {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
              Text('Description',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600)),
              SizedBox(height: 10),
              Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width * 0.85,
                  // height:150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 1, color: Colors.black45),
                  ),
                  child: Text(
                      '3 tanks of water to be delivered to Asokoro for the purpose of providing steady water supply to residents. This project is designed to provide means of storing water.',
                      style: TextStyle(
                        color: Colors.black54,
                      )))
            ])));
  }

  Widget imageBox(String image) {
    return Container(
      height: 90,
      width: 100,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 5.0, // soften the shadow
          spreadRadius: 0.5, //extend the shadow
          offset: Offset(
            0.0, // Move to right 10  horizontally
            0.0, // Move to bottom 10 Vertically
          ),
        )
      ], color: Colors.white, borderRadius: BorderRadius.circular(5.0)),
      child: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(image, height: 50),
          Text('Remove',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500))
        ],
      )),
    );
  }
}
