import 'package:bloomzon/agents/sellercreated.dart';
import 'package:flutter/material.dart';

class CreateSellerPage extends StatefulWidget {
  @override
  _CreateSellerPageState createState() => _CreateSellerPageState();
}

class _CreateSellerPageState extends State<CreateSellerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xff02499B),
        elevation: 0.0,
      ),
      backgroundColor: Color(0xffF2F2F2),
      body: SingleChildScrollView(
        child: Container(
          child: SafeArea(
            child: Stack(
              children: <Widget>[
                Container(
                  height: 150,
                  width: 450,
                  padding: EdgeInsets.fromLTRB(80.0, 0.0, 0.0, 0.0),
                  color: Color(0xff02499B),
                  child: Text(
                    "Create Seller Account",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                            left: 0, top: 40, right: 0, bottom: 0),
                        width: 370,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 20,
                            ),
                            Image.asset(
                              'images/userface.png',
                              width: 105,
                              height: 100,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Upload Picture',
                                  style: TextStyle(
                                      color: Color(0xff02499B),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  60.0, 0.0, 0.0, 0.0),
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'Seller Name',
                                          style: TextStyle(
                                            color: Colors.black,
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
                                          height: 30,
                                          width: 250,
                                          margin: EdgeInsets.fromLTRB(
                                              0.0, 0.0, 5.0, 0.0),
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              filled: true,
                                              fillColor: Colors.white,
                                              hintText: "Enter Name",
                                              hintStyle: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12,
                                              ),
                                              focusColor: Colors.white,
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black)),
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
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'Service Description',
                                          style: TextStyle(
                                            color: Colors.black,
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
                                          height: 30,
                                          width: 250,
                                          margin: EdgeInsets.fromLTRB(
                                              0.0, 0.0, 5.0, 0.0),
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              filled: true,
                                              fillColor: Colors.white,
                                              hintText: "",
                                              hintStyle: TextStyle(
                                                color: Colors.white,
                                              ),
                                              focusColor: Colors.white,
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black)),
                                            ),
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                            validator: (value) {
                                              if (value.isEmpty) {
                                                return 'Please enter phone number';
                                              }
                                              return null;
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'Shop Address',
                                          style: TextStyle(
                                            color: Colors.black,
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
                                          height: 30,
                                          width: 250,
                                          margin: EdgeInsets.fromLTRB(
                                              0.0, 0.0, 5.0, 0.0),
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              filled: true,
                                              fillColor: Colors.white,
                                              hintText: "",
                                              hintStyle: TextStyle(
                                                color: Colors.grey,
                                              ),
                                              focusColor: Colors.white,
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black)),
                                            ),
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                            validator: (value) {
                                              if (value.isEmpty) {
                                                return 'Please enter phone number';
                                              }
                                              return null;
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'Username',
                                          style: TextStyle(
                                            color: Colors.black,
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
                                          height: 30,
                                          width: 250,
                                          margin: EdgeInsets.fromLTRB(
                                              0.0, 0.0, 5.0, 0.0),
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              filled: true,
                                              fillColor: Colors.white,
                                              hintText: "",
                                              hintStyle: TextStyle(
                                                color: Colors.grey,
                                              ),
                                              focusColor: Colors.white,
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black)),
                                            ),
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                            validator: (value) {
                                              if (value.isEmpty) {
                                                return 'Please enter phone number';
                                              }
                                              return null;
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'Password',
                                          style: TextStyle(
                                            color: Colors.black,
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
                                          height: 30,
                                          width: 250,
                                          margin: EdgeInsets.fromLTRB(
                                              0.0, 0.0, 5.0, 0.0),
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              filled: true,
                                              fillColor: Colors.white,
                                              hintText:
                                                  "Create a unique password",
                                              hintStyle: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey,
                                              ),
                                              focusColor: Colors.white,
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black)),
                                            ),
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                            validator: (value) {
                                              if (value.isEmpty) {
                                                return 'Please enter phone number';
                                              }
                                              return null;
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'STAGE',
                                          style: TextStyle(
                                            color: Colors.black,
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
                                          width: 200,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: Colors.black)),
                                          padding: EdgeInsets.fromLTRB(
                                              30.0, 0.0, 0.0, 0.0),
                                          child: Theme(
                                            data: Theme.of(context).copyWith(
                                              canvasColor: Colors.white,
                                            ),
                                            child: new DropdownButtonFormField<
                                                String>(
                                              style: TextStyle(
                                                  color: Colors.black),
                                              iconEnabledColor: Colors.white,
                                              decoration: InputDecoration(
                                                fillColor: Colors.white,
                                                filled: true,
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
                                                'Stage 1',
                                                'Stage 2',
                                                'Stage 3',
                                              ].map<DropdownMenuItem<String>>(
                                                  (String value) {
                                                return new DropdownMenuItem<
                                                    String>(
                                                  value: value,
                                                  child: new Text(
                                                    value,
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                );
                                              }).toList(),
                                            ),
                                          ),
                                        ),
                                        ButtonTheme(
                                          height: 30,
                                          minWidth: 30,
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 630.0, 0.0, 0.0),
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        ButtonTheme(
                          height: 49,
                          minWidth: 200,
                          child: RaisedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SellerCreated()),
                                );
                              },
                              color: Color(0xffAF2E1D),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Color(0xffAF2E1D),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(40.0),
                                ),
                              ),
                              child: Text(
                                'SUBMIT',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
