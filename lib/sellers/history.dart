import 'package:flutter/material.dart';
import 'package:bloomzon/sellers/transaction_details.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  List<String> _locations = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ]; // Option 2
  String _selectedLocation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            Positioned(top: 0, child: blueContainer()),
            Align(alignment: Alignment.bottomCenter, child: largeContainer()),
            Positioned(
                top: 50,
                left: 10,
                child: IconButton(
                  icon: Icon(Icons.arrow_back, size: 32, color: Colors.white),
                  onPressed: () => Navigator.pop(context),
                ))
          ],
        ));
  }

  Widget largeContainer() {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      margin: EdgeInsets.only(bottom: 20),
      height: MediaQuery.of(context).size.height * 0.65,
      width: MediaQuery.of(context).size.width * 0.95,
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
      ], color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: ListView(padding: EdgeInsets.all(5),
          //crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            historyBox(),
            historyBox(),
            historyBox(),
            historyBox(),
            historyBox(),
            historyBox()
          ]),
    );
  }

  Widget blueContainer() {
    return ClipPath(
        clipper: ArcClipper(),
        child: Container(
            padding: EdgeInsets.only(top: 90),
            width: MediaQuery.of(context).size.width,
            height: 350,
            color: Colors.blue[900],
            child: Center(
                child: Column(
              children: <Widget>[
                Text('My History',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 40),
                accountInfo()
              ],
            ))));
  }

  Widget accountInfo() {
    return Padding(
        padding: EdgeInsets.zero,
        child: Container(
            width: MediaQuery.of(context).size.width * 0.90,
            height: 50,
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    // Text('Months', style: TextStyle(color: Colors.grey)),
                    Container(
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.grey[50],
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15))),
                        child: Center(
                          child: DropdownButton(
                            hint: Text('Months',
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
                    Row(children: <Widget>[
                      Text('Total Sales:',
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w600,
                              fontSize: 16)),
                      SizedBox(width: 6),
                      Text('N10,000',
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w600,
                              fontSize: 16)),
                    ])
                  ]),
            )));
  }

  Widget historyBox() {
    return Container(
        padding: EdgeInsets.all(3.0),
        margin: EdgeInsets.only(bottom: 15),
        height: 100,
        width: MediaQuery.of(context).size.width * 0.90,
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey),
            borderRadius: BorderRadius.circular(5)),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                  margin: EdgeInsets.all(5),
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(color: Colors.white),
                  child: GridView.count(
                    padding: EdgeInsets.zero,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 2,
                    crossAxisCount: 2,
                    children: <Widget>[
                      Image.asset('images/png_bag.png', height: 20),
                      Image.asset('images/png_shirt.png', height: 20),
                      Image.asset('images/png_shoe.png', height: 20)
                    ],
                  )),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text('BUYER: Paul124',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600)),
                    Text('AMOUNT: N2,000',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600)),
                    Text('QTY: 20',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600))
                  ]),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('01/07/2020',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w600)),
                    RaisedButton(
                        onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (_) => TransactionDetails())),
                        color: Colors.red[900],
                        child: Text('View Details',
                            style:
                                TextStyle(fontSize: 12, color: Colors.white)))
                  ]),
            ]));
  }
}

/*
total profit is close to make withdrawal,
push them down
make the bottomnav bar work
in history reduce the grey dropdown,
shift total sales to left,
correct the images to real ones
work on notifications to show main
add text input for message
in new product, make the dropdown work
in bloozom sales, create a page for each category, add filter by size, cost,color
in live tracking,space the text in the header,
change delivery status dropdown text color
add phone number after billing address and space
in account settings add new page page for updates
*/

class ArcClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 50);

    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstPoint = Offset(size.width / 2, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstPoint.dx, firstPoint.dy);

    var secondControlPoint = Offset(size.width - (size.width / 4), size.height);
    var secondPoint = Offset(size.width, size.height - 50);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondPoint.dx, secondPoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
