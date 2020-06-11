import 'package:flutter/material.dart';
import 'package:bloomzon/sellers/order_details.dart';

class AllOrders extends StatefulWidget {
  @override
  _AllOrdersState createState() => _AllOrdersState();
}

class _AllOrdersState extends State<AllOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // bottomNavigationBar: bottomNavBar(),
        backgroundColor: Colors.grey[100],
        body: Stack(
          children: <Widget>[
            Positioned(top: 0, child: blueContainer()),
            Positioned(top: 120, left: 8, right: 8, child: largeContainer()),
            Positioned(
                top: 50,
                left: 10,
                child: IconButton(
                  icon: Icon(Icons.arrow_back, size: 32, color: Colors.white),
                  onPressed: () => Navigator.pop(context),
                )),
            Positioned(bottom: 25, left: 0, right: 0, child: navRow())
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
          blurRadius: 10.0, // soften the shadow
          spreadRadius: 2.0, //extend the shadow
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
            padding: EdgeInsets.only(top: 70),
            width: MediaQuery.of(context).size.width,
            height: 350,
            color: Colors.blue[900],
            child: Center(
                child: Column(
              children: <Widget>[
                Text('All Orders',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
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
              child: Row(children: <Widget>[
                Text('Months', style: TextStyle(color: Colors.grey))
              ]),
            )));
  }

  Widget historyBox() {
    return Container(
        padding: EdgeInsets.all(5.0),
        margin: EdgeInsets.only(bottom: 15),
        height: 100,
        width: MediaQuery.of(context).size.width * 0.90,
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey),
            borderRadius: BorderRadius.circular(5)),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text('Order 143292',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600)),
                    Text('N24,000',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600)),
                    Text('2 Bags, 4 Shoes',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600))
                  ]),
              Container(),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    redBtn(),
                    Text('09/04/2020',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600)),
                    smallBtn(),
                  ]),
            ]));
  }

  Widget smallBtn() {
    return GestureDetector(
        onTap: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => OrderDetails())),
        child: Container(
            // margin: EdgeInsets.only(left: 50),
            height: 30,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(25),
              // border: Border.all(color: Colors.white, width: 2)
            ),
            child: Center(
                child: Text('Details',
                    style: TextStyle(fontSize: 12, color: Colors.black)))));
  }

  Widget arrowBtn(Color color, bool isFront) {
    return Container(
        height: 25,
        width: 25,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: color),
        child: Center(
            child: Icon(isFront ? Icons.arrow_forward : Icons.arrow_back,
                color: Colors.white, size: 12)));
  }

  Widget navRow() {
    return Container(
        child: Center(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
          Text('1 ',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w500)),
          Text('2 3 4 5 6',
              style:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.w500)),
          SizedBox(width: 10),
          arrowBtn(Colors.black, false),
          SizedBox(width: 7),
          arrowBtn(Colors.grey, true)
        ])));
  }

  Widget redBtn() {
    return Container(
        // margin: EdgeInsets.only(left: 50),
        height: 30,
        width: 65,
        decoration: BoxDecoration(
          color: Colors.red[900],
          borderRadius: BorderRadius.circular(25),
          //  border: Border.all(color: Colors.white, width: 2)
        ),
        child: Center(
            child: Text('Delivered',
                style: TextStyle(fontSize: 12, color: Colors.white))));
  }

  Widget bottomNavBar() {
    return Container(
      padding: EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width,
      height: 70,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.notifications, color: Colors.black87),
              SizedBox(height: 3.0),
              Text('Home',
                  style: TextStyle(color: Colors.black87, fontSize: 12))
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.account_circle, color: Colors.black87),
              SizedBox(height: 3.0),
              Text('Account',
                  style: TextStyle(color: Colors.black87, fontSize: 12))
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.mail, color: Colors.black87),
              SizedBox(height: 3.0),
              Text('Messages',
                  style: TextStyle(color: Colors.black87, fontSize: 12))
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.exit_to_app, color: Colors.black87),
              SizedBox(height: 3.0),
              Text('Logout',
                  style: TextStyle(color: Colors.black87, fontSize: 12))
            ],
          )
        ],
      ),
    );
  }
}

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
