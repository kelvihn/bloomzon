import 'package:bloomzon/Initial-pages/account-creation.dart';
import 'package:bloomzon/Initial-pages/login.dart';
import 'package:flutter/material.dart';

class SellerList extends StatefulWidget {
  @override
  _SellerListState createState() => _SellerListState();
}

class _SellerListState extends State<SellerList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: new AppBar(
              iconTheme: new IconThemeData(color: Color(0xff02499B)),
              backgroundColor: Colors.white,
              elevation: 0.0,
              actions: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                      child: ButtonTheme(
                        height: 25,
                        minWidth: 50,
                        child: RaisedButton(
                          color: Color(0xffAF2E1D),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              style: BorderStyle.solid,
                              color: Color(0xffAF2E1D),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(50.0),
                            ),
                          ),
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          textColor: Colors.white,
                          highlightElevation: 8.0,
                          splashColor: Colors.white,
                          elevation: 2.0,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()),
                            );
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 15.0, 0.0),
                      child: ButtonTheme(
                        height: 25,
                        minWidth: 50,
                        child: RaisedButton(
                          color: Color(0xff02499B),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              style: BorderStyle.solid,
                              color: Color(0xff02499B),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(50.0),
                            ),
                          ),
                          child: Text(
                            "Signup",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          textColor: Colors.white,
                          highlightElevation: 8.0,
                          splashColor: Colors.white,
                          elevation: 2.0,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AccountCreationPage()),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            body: SingleChildScrollView(
                child: Column(children: [
              header(),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
                child: Row(
                  children: [
                    OutlineButton(
                        borderSide: BorderSide(color: Colors.blue[900]),
                        color: Colors.blue[900],
                        disabledBorderColor: Colors.blue[900],
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Filter By',
                                style: TextStyle(
                                  color: Colors.blue[900],
                                )),
                            SizedBox(width: 20),
                            Icon(Icons.arrow_drop_down)
                          ],
                        ))
                  ],
                ),
              ),
              serviceTile('images/hair_services.jpg', 'Hair Dressing Services',
                  'Wuse 2, Abuja', 'We offer various kinds of hair styles'),
              serviceTile('images/it_support.jpg', 'IT Support',
                  'Wuse 2, Abuja', 'We provide instant Computer repairs'),
              serviceTile('images/archi_services.jpg', 'Architectural Services',
                  'Wuse 2, Abuja', 'We design majestic buildings')
            ]))));
  }

  Widget header() {
    return Stack(
      children: [
        Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/service6.jpg'),
                    fit: BoxFit.cover))),
        Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue[900].withOpacity(.8),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Sellers',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600)),
                SizedBox(height: 20),
                searchBox()
              ],
            )))
      ],
    );
  }

  Widget serviceTile(
      String image, String title, String address, String description) {
    return Container(
        alignment: Alignment.center,
        height: 120,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 5.0, // soften the shadow
              spreadRadius: 0.5, //extend the shadow
              offset: Offset(
                0.0, // Move to right 10  horizontally
                0.0, // Move to bottom 10 Vertically
              ),
            )
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            imageBox(image),
            Container(
                width: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(title,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        )),
                    Text(address,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        )),
                    Text(description,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                        ))
                  ],
                )),
            outlineBtn()
          ],
        ));
  }

  Widget searchBox() {
    return Container(
        height: 50,
        padding: EdgeInsets.symmetric(horizontal: 10),
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(25)),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(Icons.search, color: Colors.blue[500]),
              SizedBox(width: 20),
              Expanded(
                  child: TextField(
                      decoration: InputDecoration.collapsed(
                          hintText: 'Search Services')))
            ]));
  }

  Widget imageBox(String image) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
    );
  }

  outlineBtn() {
    return Container(
        height: 35,
        padding: EdgeInsets.symmetric(horizontal: 4, vertical: 3),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.blue[900], width: 1),
            borderRadius: BorderRadius.circular(5)),
        child: Center(
            child: Text('View Details',
                style: TextStyle(color: Colors.blue[900], fontSize: 12))));
  }
}
