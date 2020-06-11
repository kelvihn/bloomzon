import 'package:flutter/material.dart';

class EditProduct extends StatefulWidget {
  @override
  _EditProductState createState() => _EditProductState();
}

class _EditProductState extends State<EditProduct> {
  List<String> _locations = ['N', "\$"]; // Option 2
  String _selectedLocation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red[900],
        body: Stack(children: <Widget>[
          Positioned(
            top: 50,
            child: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.of(context).pop()),
          ),
          Positioned(
            top: 70,
            left: 0,
            right: 0,
            child: Text(
              'Edit Product',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(bottom: 0, child: largeContainer())
        ]));
  }

  Widget largeContainer() {
    return Container(
        height: MediaQuery.of(context).size.height * 0.85,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: Colors.grey[50],
            borderRadius: BorderRadius.only(topLeft: Radius.circular(50))),
        child: ListView(padding: EdgeInsets.zero, children: <Widget>[
          imageContainer(),
          picContainer(),
          SizedBox(height: 15),
          productDetailsText(),
          SizedBox(height: 15),
          descriptionBox(),
          SizedBox(height: 10),
          colorRow(),
          SizedBox(height: 15),
          stockRow(),
          SizedBox(height: 15),
          quantityBox(),
          SizedBox(height: 10),
          saveBtn(),
        ]));
  }

  Widget descriptionField() {
    return Container(
        padding: EdgeInsets.only(left: 10),
        height: 40,
        width: 200,
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
        ], color: Colors.white, borderRadius: BorderRadius.circular(25)),
        child: TextField(
          decoration: InputDecoration.collapsed(hintText: ''),
        ));
  }

  Widget stockBtn() {
    return Container(
        height: 50,
        width: 120,
        decoration: BoxDecoration(
            color: Colors.blue[900], borderRadius: BorderRadius.circular(5)),
        child: Center(
            child: Text('Stock',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18))));
  }

  Widget saveBtn() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
        height: 50,
        width: 150,
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

  Widget stockRow() {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        stockBtn(),
        SizedBox(width: 10),
        Container(
            width: 170,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5.0,
                  spreadRadius: 0.5, //extend the shadow
                  offset: Offset(
                    0.0, // Move to right 10  horizontally
                    0.0, // Move to bottom 10 Vertically
                  ),
                )
              ],
              //border: Border.all(width: 1, color: Colors.black45),
            ),
            child: Center(
                child: Text('10',
                    style: TextStyle(color: Colors.black, fontSize: 18))))
      ],
    ));
  }

  Widget quanTextBox(String text, double width) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Row(children: <Widget>[
          Text(text, style: TextStyle(fontWeight: FontWeight.w600)),
          SizedBox(width: 10),
          Container(
              height: 40,
              width: width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey[100]))
        ]));
  }

  Widget selectBtn() {
    return Container(
        height: 40,
        width: 50,
        decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(25),
              bottomRight: Radius.circular(25),
            )),
        child: Center(child: Icon(Icons.arrow_drop_down)));
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
                      color: Colors.grey[100]),
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

  Widget discountBox() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Row(children: <Widget>[
          Text('Discount', style: TextStyle(fontWeight: FontWeight.w600)),
          SizedBox(width: 10),
          Row(children: <Widget>[
            Container(
                height: 40,
                width: 140,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      bottomLeft: Radius.circular(25),
                    ),
                    color: Colors.grey[100])),
            Container(
                height: 40,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    )),
                child: Center(child: Text('N2,000')))
          ])
        ]));
  }

  Widget quantityBox() {
    return Container(
        height: 320,
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 5.0,
              spreadRadius: 0.5, //extend the shadow
              offset: Offset(
                0.0, // Move to right 10  horizontally
                0.0, // Move to bottom 10 Vertically
              ),
            )
          ],
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              quanTextBox('Minimum Quantity', 150),
              quanTextBox('Weight', 200),
              quanTextBox('Price', 200),
              currencyBox(),
              discountBox()
            ]));
  }

  Widget descriptionBox() {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text('Description',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18)),
        SizedBox(width: 8),
        descriptionField()
      ],
    ));
  }

  Widget colorBox(Color color, String text) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: color)),
          SizedBox(height: 8),
          Text(text, style: TextStyle(fontSize: 12))
        ]);
  }

  Widget colorRow() {
    return Container(
        // width: MediaQuery.of(context).size.width * 0.90,
        child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Colors:',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18)),
            SizedBox(height: 6),
            Text('(Click the \navailable column)',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12))
          ],
        ),
        colorBox(Colors.blue[900], 'Blue'),
        colorBox(Colors.black, 'Black'),
        colorBox(Colors.yellow, 'Yellow'),
        colorBox(Colors.pink, 'Pink'),
        colorBox(Colors.purple, 'Purple'),
        colorBox(Colors.green, 'Green'),
        colorBox(Colors.red[900], 'Red')
      ],
    ));
  }

  Widget itemBox(String image) {
    return Container(
        padding: EdgeInsets.all(7),
        height: 50,
        width: 100,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 5.0,
                spreadRadius: 0.5, //extend the shadow
                offset: Offset(
                  0.0, // Move to right 10  horizontally
                  0.0, // Move to bottom 10 Vertically
                ),
              )
            ],
            border: Border.all(width: 1, color: Colors.black45)),
        child: Image.asset(image, height: 45));
  }

  Widget smallItemBox(String image) {
    return Container(
        padding: EdgeInsets.all(7),
        height: 50,
        width: 60,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(5),
          border: Border.all(width: 1, color: Colors.black45),
        ),
        child: Image.asset(image, height: 45));
  }

  Widget accountInfo() {
    return Padding(
        padding: EdgeInsets.zero,
        child: Container(
            width: 150,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5.0,
                  spreadRadius: 0.5, //extend the shadow
                  offset: Offset(
                    0.0, // Move to right 10  horizontally
                    0.0, // Move to bottom 10 Vertically
                  ),
                )
              ],
              border: Border.all(width: 1, color: Colors.grey),
            ),
            child: Center(
                child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Upload Product', style: TextStyle(color: Colors.black)),
                SizedBox(width: 5),
                Icon(Icons.cloud_upload)
              ],
            ))));
  }

  Widget productDetailsText() {
    return Container(
        width: MediaQuery.of(context).size.width * 0.80,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
            child: Text('Product Details',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 18))));
  }

  Widget picContainer() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.only(top: 15),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    smallItemBox('images/png_bag.png'),
                    SizedBox(height: 4),
                    Text('1')
                  ]),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    smallItemBox('images/png_bag.png'),
                    SizedBox(height: 4),
                    Text('2')
                  ]),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    smallItemBox('images/png_bag.png'),
                    SizedBox(height: 4),
                    Text('3')
                  ]),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    smallItemBox('images/png_bag.png'),
                    SizedBox(height: 4),
                    Text('4')
                  ]),
            ]));
  }

  Widget imageContainer() {
    return Container(
        margin: EdgeInsets.only(top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[itemBox('images/png_bag.png'), accountInfo()],
        ));
  }
}
