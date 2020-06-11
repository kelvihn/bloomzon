import 'package:flutter/material.dart';

class AddProduct extends StatefulWidget {
  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
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
                  chooseFileBox(),
                  chooseFileBox(),
                  descBox(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[redBtn()],
                  ),
                  currencyBox(),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[addBtn()])
                ]))));
  }

  Widget firstBox() {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 60),
          height: 60,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.grey[200],
          ),
        ),
        Positioned(
            top: 5,
            left: 8,
            child: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.blue[900]),
                onPressed: () => Navigator.of(context).pop())),
      ],
    );
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
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 1, color: Colors.black45),
                  ),
                  child: TextField(
                      decoration: InputDecoration.collapsed(hintText: '')))
            ])));
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

  Widget addBtn() {
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
                child: Text('ADD PRODUCT',
                    style: TextStyle(color: Colors.white, fontSize: 12)))));
  }

  Widget chooseFileBox() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Center(
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Container(
                  height: 40,
                  width: 280,
                  padding: EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 1, color: Colors.black54)),
                  child: Row(children: <Widget>[
                    Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            border:
                                Border.all(width: 1, color: Colors.black54)),
                        child: Center(
                            child: Text('Choose Image',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600)))),
                    SizedBox(width: 20),
                    Text('',
                        style: TextStyle(
                          color: Colors.grey,
                        ))
                  ])),
              Text('Add',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500))
            ])));
  }
}
