import 'package:bloomzon/groceries/edit-profile.dart';
import 'package:flutter/material.dart';

class UpdateCompanyPage extends StatefulWidget {
  @override
  _UpdateCompanyPageState createState() => _UpdateCompanyPageState();
}

class _UpdateCompanyPageState extends State<UpdateCompanyPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xff02499B),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: 280,
                      child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                          child: Image.asset(
                            'images/image4.png',
                            fit: BoxFit.fill,
                          )),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                'images/logo-cir.png',
                              ),
                              radius: 50.0,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            ButtonTheme(
                              height: 35,
                              minWidth: 70,
                              child: RaisedButton(
                                  onPressed: () {},
                                  color: Color(0xff4A6A90),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: Colors.white,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(40.0),
                                    ),
                                  ),
                                  child: Text(
                                    'Upload Logo',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  )),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "KFC Restaurant",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "081372456893",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "sqt@gmail.com",
                              style: TextStyle(
                                fontSize: 16,
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
                  margin:
                      EdgeInsets.only(left: 10, top: 20, right: 0, bottom: 0),
                  width: 350,
                  height: 400,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 40.0, 0.0, 0.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Service:',
                                  style: TextStyle(
                                      color: Color(0xff02499B),
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 35,
                                ),
                                Text(
                                  'Address:',
                                  style: TextStyle(
                                      color: Color(0xff02499B),
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Intercontinental',
                                  style: TextStyle(
                                    color: Color(0xff02499B),
                                    fontSize: 17,
                                  ),
                                ),
                                Text(
                                  '& Local dishes',
                                  style: TextStyle(
                                    color: Color(0xff02499B),
                                    fontSize: 17,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Wuse 2, Abuja',
                                  style: TextStyle(
                                    color: Color(0xff02499B),
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        ButtonTheme(
                          height: 49,
                          minWidth: 150,
                          child: RaisedButton(
                            color: Color(0xff02499B),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                style: BorderStyle.solid,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                            ),
                            child: Text(
                              "Edit Profile",
                              style: TextStyle(
                                fontSize: 19,
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
                                    builder: (context) => EditProfilePage()),
                              );
                            },
                          ),
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
