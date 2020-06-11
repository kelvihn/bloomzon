import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:bloomzon/sellers/bloomzon_product_single.dart';

class BloomzonProduct extends StatefulWidget {
  @override
  _BloomzonProductState createState() => _BloomzonProductState();
}

class _BloomzonProductState extends State<BloomzonProduct> {
  List<String> _locations = ['Price', 'Size', 'Color']; // Option 2
  String _selectedLocation;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue[900],
              elevation: 0,
              titleSpacing: 0,
            ),
            backgroundColor: Colors.grey[100],
            body: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    firstBox(),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      margin: EdgeInsets.only(left: 20),
                      alignment: Alignment.centerRight,
                      height: 40,
                      width: 140,
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
                          borderRadius: BorderRadius.circular(5.0)),
                      child: DropdownButton(
                        itemHeight: 50,
                        underline: SizedBox.shrink(),
                        isExpanded: true,
                        icon: Icon(Icons.filter_list),
                        hint: Text('Filter By'), // Not necessary for Option 1
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
                    ),
                    SizedBox(height: 10),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: GridView.count(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              shrinkWrap: true,
                              crossAxisCount: 2,
                              children: <Widget>[
                                subContainer('Fashion', 'images/sh1.png'),
                                subContainer('Fashion', 'images/sh2.png'),
                                subContainer('Fashion', 'images/sh3.png'),
                                subContainer('Fashion', 'images/sh4.png'),
                                subContainer('Fashion', 'images/sh5.png'),
                                subContainer('Fashion', 'images/sh6.png'),
                              ]),
                        )),
                    SizedBox(height: 20),
                  ],
                )))));
  }

  Widget firstBox() {
    return Container(
        padding: EdgeInsets.only(top: 30),
        height: 80,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.blue[900],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(5),
            )),
        child: Text(
          'BLOOMZON T-SHIRTS',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          textAlign: TextAlign.center,
        ));
  }

  Widget subContainer(String text, String image) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => BloomzonProductSingle()));
        },
        child: Container(
            height: 140,
            width: 140,
            child: Stack(children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 130,
                      width: 140,
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
                          borderRadius: BorderRadius.circular(5.0)),
                      child: Center(child: Image.asset(image, height: 60)),
                    ),
                  ]),
              Positioned(left: 0, right: 0, top: 105, child: btnRow()),
              Positioned(
                  //  left: 0,
                  right: 25,
                  top: 5,
                  child: Text('N2000',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w600,
                          fontSize: 12)))
            ])));
  }

  Widget btnRow() {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          addToCartBtn(),
          SizedBox(width: 3),
          addToFav(),
          SizedBox(width: 3),
          review()
        ]);
  }

  Widget addToFav() {
    return Container(
        height: 30,
        width: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: Colors.red[900]),
        child: Center(
            child: Icon(AntDesign.heart, color: Colors.white, size: 16)));
  }

  Widget review() {
    return Container(
        height: 30,
        width: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: Colors.red[900]),
        child: Center(
            child: Text('Review',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ))));
  }

  Widget addToCartBtn() {
    return Container(
        height: 30,
        width: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: Colors.red[900]),
        child: Center(
            child:
                Icon(AntDesign.shoppingcart, color: Colors.white, size: 18)));
  }
}
