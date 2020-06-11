import 'package:flutter/material.dart';

class UpdateParticularPage extends StatefulWidget {
  @override
  _UpdateParticularPageState createState() => _UpdateParticularPageState();
}

class _UpdateParticularPageState extends State<UpdateParticularPage> {
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
        backgroundColor: Color(0xff363636),
        elevation: 0.0,
      ),
      backgroundColor: Color(0xff363636),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
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
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Anabel Olivia",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "Driver Location: Abuja",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Vehicle Particular',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: <Widget>[
                                  ButtonTheme(
                                    height: 35,
                                    minWidth: 25,
                                    child: RaisedButton(
                                      color: Colors.grey,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          style: BorderStyle.solid,
                                          color: Colors.white,
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(0.0),
                                        ),
                                      ),
                                      child: Text(
                                        "Choose file",
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                      textColor: Colors.white,
                                      highlightElevation: 8.0,
                                      splashColor: Colors.white,
                                      elevation: 2.0,
                                      onPressed: () {},
                                    ),
                                  ),
                                  SizedBox(
                                    height: 35,
                                    width: 190,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        border: UnderlineInputBorder(),
                                        filled: true,
                                        fillColor: Colors.white,
                                        hintText: "No file choosen",
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                        ),
                                        focusColor: Colors.white,
                                        enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.white)),
                                      ),
                                      style: TextStyle(
                                        color: Color(0xff02499B),
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
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Valid ID card',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: <Widget>[
                                  ButtonTheme(
                                    height: 35,
                                    minWidth: 25,
                                    child: RaisedButton(
                                      color: Colors.grey,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          style: BorderStyle.solid,
                                          color: Colors.white,
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(0.0),
                                        ),
                                      ),
                                      child: Text(
                                        "Choose file",
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                      textColor: Colors.white,
                                      highlightElevation: 8.0,
                                      splashColor: Colors.white,
                                      elevation: 2.0,
                                      onPressed: () {},
                                    ),
                                  ),
                                  SizedBox(
                                    height: 35,
                                    width: 190,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        border: UnderlineInputBorder(),
                                        filled: true,
                                        fillColor: Colors.white,
                                        hintText: "No file choosen",
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                        ),
                                        focusColor: Colors.white,
                                        enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.white)),
                                      ),
                                      style: TextStyle(
                                        color: Color(0xff02499B),
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
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Academic Credentials',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: <Widget>[
                                  ButtonTheme(
                                    height: 35,
                                    minWidth: 25,
                                    child: RaisedButton(
                                      color: Colors.grey,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          style: BorderStyle.solid,
                                          color: Colors.white,
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(0.0),
                                        ),
                                      ),
                                      child: Text(
                                        "Choose file",
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                      textColor: Colors.white,
                                      highlightElevation: 8.0,
                                      splashColor: Colors.white,
                                      elevation: 2.0,
                                      onPressed: () {},
                                    ),
                                  ),
                                  SizedBox(
                                    height: 35,
                                    width: 190,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        border: UnderlineInputBorder(),
                                        filled: true,
                                        fillColor: Colors.white,
                                        hintText: "No file choosen",
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                        ),
                                        focusColor: Colors.white,
                                        enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.white)),
                                      ),
                                      style: TextStyle(
                                        color: Color(0xff02499B),
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
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Driver's License",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: <Widget>[
                                  ButtonTheme(
                                    height: 35,
                                    minWidth: 25,
                                    child: RaisedButton(
                                      color: Colors.grey,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          style: BorderStyle.solid,
                                          color: Colors.white,
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(0.0),
                                        ),
                                      ),
                                      child: Text(
                                        "Choose file",
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                      textColor: Colors.white,
                                      highlightElevation: 8.0,
                                      splashColor: Colors.white,
                                      elevation: 2.0,
                                      onPressed: () {},
                                    ),
                                  ),
                                  SizedBox(
                                    height: 35,
                                    width: 190,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        border: UnderlineInputBorder(),
                                        filled: true,
                                        fillColor: Colors.white,
                                        hintText: "No file choosen",
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                        ),
                                        focusColor: Colors.white,
                                        enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.white)),
                                      ),
                                      style: TextStyle(
                                        color: Color(0xff02499B),
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
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Text(
                                    "Delivery Method",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Container(
                                    color: Colors.white,
                                    padding: EdgeInsets.fromLTRB(
                                        20.0, 0.0, 0.0, 0.0),
                                    child: Theme(
                                      data: Theme.of(context).copyWith(
                                        canvasColor: Colors.white,
                                      ),
                                      child: new DropdownButton<String>(
                                        style: TextStyle(color: Colors.white),
                                        hint: Text(
                                          'Select Method',
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        onChanged: (String newValue) {},
                                        items: <String>[
                                          'Bike',
                                          'Car',
                                        ].map<DropdownMenuItem<String>>(
                                            (String value) {
                                          return new DropdownMenuItem<String>(
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
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
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
