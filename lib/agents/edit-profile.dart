import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text(
          '',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
          ),
        ),
        iconTheme: new IconThemeData(color: Colors.white),
        backgroundColor: Color(0xff1A1A1A),
        elevation: 0.0,
      ),
      backgroundColor: Color(0xff1A1A1A),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 0.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              CircleAvatar(
                                backgroundImage: AssetImage(
                                  'images/userface2.png',
                                ),
                                radius: 50.0,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    "Anabel Olivia",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  ButtonTheme(
                                    height: 20,
                                    minWidth: 40,
                                    child: RaisedButton(
                                        onPressed: () {},
                                        color: Color(0xff535057),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            color: Colors.white,
                                          ),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(40.0),
                                          ),
                                        ),
                                        child: Text(
                                          'Edit',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                        child: Center(
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Name',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      height: 40,
                                      width: 250,
                                      margin: EdgeInsets.fromLTRB(
                                          0.0, 0.0, 5.0, 0.0),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          filled: true,
                                          fillColor: Color(0xff1A1A1A),
                                          hintText: "Anabel Olivia",
                                          hintStyle: TextStyle(
                                            color: Colors.white,
                                          ),
                                          focusColor: Colors.white,
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white)),
                                        ),
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                        validator: (value) {
                                          if (value.isEmpty) {
                                            return 'Please enter phone number';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                    ButtonTheme(
                                      height: 40,
                                      minWidth: 40,
                                      child: RaisedButton(
                                          onPressed: () {},
                                          color: Color(0xff535057),
                                          shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                color: Color(0xff535057),
                                              ),
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(0.0),
                                                topLeft: Radius.circular(0.0),
                                                bottomRight:
                                                    Radius.circular(10),
                                                topRight: Radius.circular(10),
                                              )),
                                          child: Text(
                                            'Edit',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          )),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Phone Number',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      height: 40,
                                      width: 250,
                                      margin: EdgeInsets.fromLTRB(
                                          0.0, 0.0, 5.0, 0.0),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          filled: true,
                                          fillColor: Color(0xff1A1A1A),
                                          hintText: "08158727364",
                                          hintStyle: TextStyle(
                                            color: Colors.white,
                                          ),
                                          focusColor: Colors.white,
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white)),
                                        ),
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                        validator: (value) {
                                          if (value.isEmpty) {
                                            return 'Please enter phone number';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                    ButtonTheme(
                                      height: 40,
                                      minWidth: 40,
                                      child: RaisedButton(
                                          onPressed: () {},
                                          color: Color(0xff535057),
                                          shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                color: Color(0xff535057),
                                              ),
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(0.0),
                                                topLeft: Radius.circular(0.0),
                                                bottomRight:
                                                    Radius.circular(10),
                                                topRight: Radius.circular(10),
                                              )),
                                          child: Text(
                                            'Edit',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          )),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Email',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      height: 40,
                                      width: 250,
                                      margin: EdgeInsets.fromLTRB(
                                          0.0, 0.0, 5.0, 0.0),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          filled: true,
                                          fillColor: Color(0xff1A1A1A),
                                          hintText: "Ginning@yahoo.com",
                                          hintStyle: TextStyle(
                                            color: Colors.white,
                                          ),
                                          focusColor: Colors.white,
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white)),
                                        ),
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                        validator: (value) {
                                          if (value.isEmpty) {
                                            return 'Please enter phone number';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                    ButtonTheme(
                                      height: 40,
                                      minWidth: 40,
                                      child: RaisedButton(
                                          onPressed: () {},
                                          color: Color(0xff535057),
                                          shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                color: Color(0xff535057),
                                              ),
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(0.0),
                                                topLeft: Radius.circular(0.0),
                                                bottomRight:
                                                    Radius.circular(10),
                                                topRight: Radius.circular(10),
                                              )),
                                          child: Text(
                                            'Edit',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          )),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Address',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      height: 40,
                                      width: 250,
                                      margin: EdgeInsets.fromLTRB(
                                          0.0, 0.0, 5.0, 0.0),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          filled: true,
                                          fillColor: Color(0xff1A1A1A),
                                          hintText: "Wuse 2 Abuja",
                                          hintStyle: TextStyle(
                                            color: Colors.white,
                                          ),
                                          focusColor: Colors.white,
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white)),
                                        ),
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                        validator: (value) {
                                          if (value.isEmpty) {
                                            return 'Please enter phone number';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                    ButtonTheme(
                                      height: 40,
                                      minWidth: 40,
                                      child: RaisedButton(
                                          onPressed: () {},
                                          color: Color(0xff535057),
                                          shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                color: Color(0xff535057),
                                              ),
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(0.0),
                                                topLeft: Radius.circular(0.0),
                                                bottomRight:
                                                    Radius.circular(10),
                                                topRight: Radius.circular(10),
                                              )),
                                          child: Text(
                                            'Edit',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          )),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Billing Address',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      height: 40,
                                      width: 250,
                                      margin: EdgeInsets.fromLTRB(
                                          0.0, 0.0, 5.0, 0.0),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          filled: true,
                                          fillColor: Color(0xff1A1A1A),
                                          hintText: "",
                                          hintStyle: TextStyle(
                                            color: Colors.white,
                                          ),
                                          focusColor: Colors.white,
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white)),
                                        ),
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                        validator: (value) {
                                          if (value.isEmpty) {
                                            return 'Please enter phone number';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                    ButtonTheme(
                                      height: 40,
                                      minWidth: 40,
                                      child: RaisedButton(
                                          onPressed: () {},
                                          color: Color(0xff535057),
                                          shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                color: Color(0xff535057),
                                              ),
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(0.0),
                                                topLeft: Radius.circular(0.0),
                                                bottomRight:
                                                    Radius.circular(10),
                                                topRight: Radius.circular(10),
                                              )),
                                          child: Text(
                                            'Edit',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          )),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Cash-out',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      width: 250,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: Color(0xff1A1A1A),
                                          border:
                                              Border.all(color: Colors.white)),
                                      padding: EdgeInsets.fromLTRB(
                                          30.0, 0.0, 0.0, 0.0),
                                      child: Theme(
                                        data: Theme.of(context).copyWith(
                                          canvasColor: Color(0xff1A1A1A),
                                        ),
                                        child:
                                            new DropdownButtonFormField<String>(
                                          style: TextStyle(
                                              color: Color(0xff1A1A1A)),
                                          decoration: InputDecoration(
                                            fillColor: Color(0xff1A1A1A),
                                            filled: true,
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white),
                                            ),
                                          ),
                                          hint: Text(
                                            '',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          onChanged: (String newValue) {},
                                          items: <String>[
                                            'Zenith Bank',
                                            'Access Bank',
                                            'Wema Bank',
                                          ].map<DropdownMenuItem<String>>(
                                              (String value) {
                                            return new DropdownMenuItem<String>(
                                              value: value,
                                              child: new Text(
                                                value,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                    ),
                                    ButtonTheme(
                                      height: 45,
                                      minWidth: 40,
                                      child: RaisedButton(
                                        onPressed: () {},
                                        color: Color(0xff535057),
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              color: Color(0xff535057),
                                            ),
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(0.0),
                                              topLeft: Radius.circular(0.0),
                                              bottomRight: Radius.circular(10),
                                              topRight: Radius.circular(10),
                                            )),
                                        child: Icon(
                                          Icons.arrow_right,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                ButtonTheme(
                  height: 40,
                  minWidth: 100,
                  child: RaisedButton(
                    color: Color(0xffAF2E1D),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        style: BorderStyle.solid,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                    ),
                    child: Text(
                      "SAVE",
                      style: TextStyle(
                        fontSize: 19,
                      ),
                    ),
                    textColor: Colors.white,
                    highlightElevation: 8.0,
                    splashColor: Colors.white,
                    elevation: 2.0,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
