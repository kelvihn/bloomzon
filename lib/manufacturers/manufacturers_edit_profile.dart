import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class ManufacturersEditProfile extends StatefulWidget {
  @override
  _ManufacturersEditProfileState createState() =>
      _ManufacturersEditProfileState();
}

class _ManufacturersEditProfileState extends State<ManufacturersEditProfile> {
  TextEditingController nameController =
      TextEditingController(text: "Annabel Olivia");
  TextEditingController phoneController =
      TextEditingController(text: "0815758384");
  TextEditingController emailController =
      TextEditingController(text: " Ginning@yahoo.com");
  TextEditingController addressController =
      TextEditingController(text: "Wuse 2 Abuja");
  TextEditingController passwordController =
      TextEditingController(text: "Fire dragon");

  bool isVisible = true;

  toggleVisible() {
    if (isVisible) {
      setState(() {
        isVisible = false;
      });
    } else {
      setState(() {
        isVisible = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff19191b),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                        icon: Icon(Icons.arrow_back, color: Colors.white),
                        onPressed: () => Navigator.of(context).pop()),
                    IconButton(
                        icon: Icon(AntDesign.close, color: Colors.white),
                        onPressed: () => Navigator.of(context).pop())
                  ])),
          Container(
              child: Column(
            children: <Widget>[
              ClipOval(
                child: Image.asset(
                  'images/sophia.jpg',
                  height: 120,
                ),
              ),
              SizedBox(height: 20),
              Text('Annabel Olivia',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18)),
              SizedBox(height: 5),
              smallBtn(),
              SizedBox(height: 20),
              textFields(),
              SizedBox(height: 20),
              saveBtn(),
              SizedBox(height: 20),
            ],
          ))
        ])));
  }

  Widget smallBtn() {
    return Container(
        margin: EdgeInsets.only(left: 50),
        height: 20,
        width: 50,
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.white, width: 2)),
        child: Center(
            child: Text('Edit',
                style: TextStyle(fontSize: 12, color: Colors.white))));
  }

  Widget inputLayout(TextEditingController controller) {
    return Container(
        height: 40,
        padding: EdgeInsets.only(left: 10, bottom: 5),
        width: MediaQuery.of(context).size.width * 0.65,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(width: 2, color: Colors.white)),
        child: TextField(
          controller: controller,
          style: TextStyle(color: Colors.white),
        ));
  }

  Widget inputLayout2() {
    return Container(
        height: 80,
        padding: EdgeInsets.only(left: 10, bottom: 5),
        width: MediaQuery.of(context).size.width * 0.65,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(width: 2, color: Colors.white)),
        child: TextField(
          style: TextStyle(color: Colors.white),
        ));
  }

  Widget editBtn() {
    return Container(
        margin: EdgeInsets.only(left: 5),
        height: 40,
        width: 60,
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
                bottomRight: Radius.circular(25)),
            border: Border.all(color: Colors.white, width: 2)),
        child: Center(
            child: Text('Edit',
                style: TextStyle(fontSize: 12, color: Colors.white))));
  }

  Widget textFields() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Name', style: TextStyle(color: Colors.white)),
              SizedBox(height: 10),
              Row(
                children: <Widget>[inputLayout(nameController), editBtn()],
              ),
              SizedBox(height: 20),
              Text('Phone Number', style: TextStyle(color: Colors.white)),
              SizedBox(height: 10),
              Row(
                children: <Widget>[inputLayout(phoneController), editBtn()],
              ),
              SizedBox(height: 20),
              Text('Email', style: TextStyle(color: Colors.white)),
              SizedBox(height: 10),
              Row(
                children: <Widget>[inputLayout(emailController), editBtn()],
              ),
              SizedBox(height: 20),
              Text('Address', style: TextStyle(color: Colors.white)),
              SizedBox(height: 10),
              Row(
                children: <Widget>[inputLayout(addressController), editBtn()],
              ),
              SizedBox(height: 20),
              Text('Business Details & Description of Your Service',
                  style: TextStyle(color: Colors.white)),
              SizedBox(height: 10),
              Row(
                children: <Widget>[inputLayout2(), editBtn()],
              ),
              SizedBox(height: 20),
              Text('Password', style: TextStyle(color: Colors.white)),
              SizedBox(height: 10),
              Row(
                children: <Widget>[inputLayout(passwordController), editBtn()],
              )
            ]));
  }

  Widget saveBtn() {
    return Container(
        height: 50,
        width: 150,
        decoration: BoxDecoration(
            color: Colors.red[900],
            borderRadius: BorderRadius.circular(25),
            border: Border.all(width: 2, color: Colors.white)),
        child: Center(
            child: Text('SAVE',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 16))));
  }
}
