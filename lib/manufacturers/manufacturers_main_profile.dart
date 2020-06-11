import 'package:flutter/material.dart';
import 'package:bloomzon/manufacturers/manufacturers_edit_profile.dart';
import 'package:bloomzon/manufacturers/policies.dart';

class ManufacturersMainProfile extends StatefulWidget {
  @override
  _ManufacturersMainProfileState createState() =>
      _ManufacturersMainProfileState();
}

class _ManufacturersMainProfileState extends State<ManufacturersMainProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.grey[200],
            body: SingleChildScrollView(
              child: Column(children: <Widget>[
                SizedBox(height: 20),
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(Icons.arrow_back, color: Colors.blue[900]),
                          onPressed: () => Navigator.of(context).pop()),
                    ]),
                SizedBox(height: 10),
                detailsContainer(),
                SizedBox(height: 20),
                contentBox(),
                RaisedButton(
                    color: Colors.red[900],
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) =>
                              PoliciesPage(policy: 'Agreement Form')));
                    },
                    child: Text('Agreement Form',
                        style: TextStyle(color: Colors.white)))
              ]),
            )));
  }

  Widget detailsContainer() {
    return Container(
        height: 350,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25)),
            color: Colors.red[900]),
        child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Icon(Icons.account_circle, color: Colors.white, size: 85),
              Text('Glory Ose',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  )),
              Text('07054473882',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  )),
              Text('gloryose@gmail.com',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  )),
              Text('Off Gado Nasko way',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  )),
              Text('(Provide Tanks of oil)',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                  )),
              editBtn()
            ])));
  }

  Widget editBtn() {
    return GestureDetector(
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => ManufacturersEditProfile()));
        },
        child: Container(
            width: 150,
            height: 30,
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.white),
                borderRadius: BorderRadius.circular(25)),
            child: Center(
                child: Text('EDIT PROFILE',
                    style: TextStyle(fontSize: 12, color: Colors.white)))));
  }

  Widget raisedBtn(String text) {
    return Container(
        height: 40,
        width: 130,
        decoration: BoxDecoration(
          color: Colors.black45,
          borderRadius: BorderRadius.circular(2),
        ),
        child: Center(
            child: Text(text,
                style: TextStyle(color: Colors.white, fontSize: 12))));
  }

  Widget contentBox() {
    return Container(
        height: 200,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
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
        ], borderRadius: BorderRadius.circular(5), color: Colors.white),
        child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) => PoliciesPage(
                                        policy: 'Company Profile')));
                              },
                              child: raisedBtn('Company Profile')),
                          SizedBox(height: 7),
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text('View',
                                    style: TextStyle(
                                        color: Colors.blue[900], fontSize: 12)),
                                SizedBox(width: 5),
                                Text('Remove',
                                    style: TextStyle(
                                        color: Colors.blue[900], fontSize: 12)),
                                SizedBox(width: 5),
                              ])
                        ]),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) => PoliciesPage(
                                        policy: 'Terms & Conditions')));
                              },
                              child: raisedBtn('Terms & Conditions')),
                          SizedBox(height: 7),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text('View',
                                    style: TextStyle(
                                        color: Colors.blue[900], fontSize: 12)),
                                SizedBox(width: 5),
                                Text('Remove',
                                    style: TextStyle(
                                        color: Colors.blue[900], fontSize: 12)),
                                SizedBox(width: 5),
                                Text('Edit',
                                    style: TextStyle(
                                        color: Colors.blue[900], fontSize: 12))
                              ])
                        ])
                  ]),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) => PoliciesPage(
                                        policy: 'Terms of Purchase')));
                              },
                              child: raisedBtn('Terms of Purchase')),
                          SizedBox(height: 7),
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text('View',
                                    style: TextStyle(
                                        color: Colors.blue[900], fontSize: 12)),
                                SizedBox(width: 5),
                                Text('Remove',
                                    style: TextStyle(
                                        color: Colors.blue[900], fontSize: 12)),
                                SizedBox(width: 5),
                                Text('Edit',
                                    style: TextStyle(
                                        color: Colors.blue[900], fontSize: 12))
                              ])
                        ]),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) =>
                                        PoliciesPage(policy: 'Policies')));
                              },
                              child: raisedBtn('Policies')),
                          SizedBox(height: 7),
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text('View',
                                    style: TextStyle(
                                        color: Colors.blue[900], fontSize: 12)),
                                SizedBox(width: 5),
                                Text('Remove',
                                    style: TextStyle(
                                        color: Colors.blue[900], fontSize: 12)),
                                SizedBox(width: 5),
                                Text('Edit',
                                    style: TextStyle(
                                        color: Colors.blue[900], fontSize: 12))
                              ])
                        ])
                  ])
            ])));
  }
}
