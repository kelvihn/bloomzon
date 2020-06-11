import 'package:flutter/material.dart';
import 'package:bloomzon/manufacturers/new_advert.dart';

class NewAds extends StatefulWidget {
  @override
  _NewAdsState createState() => _NewAdsState();
}

class _NewAdsState extends State<NewAds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[50],
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          firstBox(),
          SizedBox(height: 20),
          contentBox()
        ])));
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
                'YOUR ADVERT',
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

  Widget contentBox() {
    return Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('March 20,2019 - April 10, 2020',
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w600)),
            SizedBox(height: 20),
            Image.asset(
              'images/ad6.jpg',
              width: MediaQuery.of(context).size.width,
            ),
            SizedBox(height: 20),
            Image.asset(
              'images/ad7.jpg',
              width: MediaQuery.of(context).size.width,
            ),
            SizedBox(height: 20),
            Image.asset(
              'images/ad6.jpg',
              width: MediaQuery.of(context).size.width,
            ),
            SizedBox(height: 20),
            Image.asset(
              'images/ad7.jpg',
              width: MediaQuery.of(context).size.width,
            ),
            SizedBox(height: 20),
            GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => NewAdvert()));
                },
                child: Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(10),
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(5)),
                    child: Text('Post New Ads',
                        style: TextStyle(color: Colors.white, fontSize: 16)))),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Details',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                    Divider(),
                    SizedBox(height: 20),
                    Row(children: <Widget>[
                      Text("URL:",
                          style: TextStyle(
                              color: Color(0xFF2B2950),
                              fontWeight: FontWeight.w600,
                              fontSize: 16)),
                      SizedBox(width: 5),
                      Text("sqtwebsolutions",
                          style: TextStyle(
                              color: Color(0xFF2B2950),
                              fontWeight: FontWeight.w300,
                              fontSize: 16))
                    ]),
                    SizedBox(height: 10),
                    Row(children: <Widget>[
                      Text("Page section:",
                          style: TextStyle(
                              color: Color(0xFF2B2950),
                              fontWeight: FontWeight.w600,
                              fontSize: 16)),
                      SizedBox(width: 5),
                      Text("Mobile",
                          style: TextStyle(
                              color: Color(0xFF2B2950),
                              fontWeight: FontWeight.w300,
                              fontSize: 16))
                    ]),
                    SizedBox(height: 10),
                    Row(children: <Widget>[
                      Text("Amount:",
                          style: TextStyle(
                              color: Color(0xFF2B2950),
                              fontWeight: FontWeight.w600,
                              fontSize: 16)),
                      SizedBox(width: 5),
                      Text("5,000",
                          style: TextStyle(
                              color: Color(0xFF2B2950),
                              fontWeight: FontWeight.w300,
                              fontSize: 16))
                    ]),
                    SizedBox(height: 10),
                    Row(children: <Widget>[
                      Text("Status:",
                          style: TextStyle(
                              color: Color(0xFF2B2950),
                              fontWeight: FontWeight.w600,
                              fontSize: 16)),
                      SizedBox(width: 5),
                      Text("Active",
                          style: TextStyle(
                              color: Color(0xFF2B2950),
                              fontWeight: FontWeight.w300,
                              fontSize: 16))
                    ]),
                    SizedBox(height: 10),
                    Row(children: <Widget>[
                      Text("Renewal Date:",
                          style: TextStyle(
                              color: Color(0xFF2B2950),
                              fontWeight: FontWeight.w600,
                              fontSize: 16)),
                      SizedBox(width: 5),
                      Text("04/04/2020",
                          style: TextStyle(
                              color: Color(0xFF2B2950),
                              fontWeight: FontWeight.w300,
                              fontSize: 16))
                    ]),
                    SizedBox(height: 10),
                    Container(
                        alignment: Alignment.centerRight, child: deacBtn())
                  ]),
            )
          ],
        ));
  }

  Widget deacBtn() {
    return Container(
        padding: EdgeInsets.all(5),
        // margin: EdgeInsets.only(left: 50),
        height: 40,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.red[900],
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
            child: Text('Deactivate',
                style: TextStyle(fontSize: 14, color: Colors.white))));
  }
}
