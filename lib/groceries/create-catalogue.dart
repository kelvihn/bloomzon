import 'package:bloomzon/groceries/groceriesdashboard.dart';
import 'package:bloomzon/groceries/otp.dart';
import 'package:flutter/material.dart';

class CreateCataloguePage extends StatefulWidget {
  @override
  _CreateCataloguePageState createState() => _CreateCataloguePageState();
}

class _CreateCataloguePageState extends State<CreateCataloguePage> {
  String currency;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              height: 900,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
                child: Image.asset('images/cat_bg.png'),
              ),
            ),
            Column(
              children: <Widget>[
                Container(
                  color: Color(0xff02499B),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
                    child: Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      GroceriesDashboardPage()),
                            );
                          },
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  80.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Create Catalogue',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  color: Colors.white,
                  width: 350,
                  padding: EdgeInsets.all(20.0),
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 0.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Catalogue Name',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color(0xff262424),
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(
                                32.0, 16.0, 32.0, 16.0),
                            child: Container(
                              width: 300,
                              child: TextField(
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                    const Radius.circular(5.0),
                                  )),
                                  hintText: 'Intercontinental',
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 17,
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                  labelStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  focusColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(5.0),
                                      ),
                                      borderSide: BorderSide(
                                        color: Color(0xffC1C1C1),
                                      )),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 0.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Description',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color(0xff262424),
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(
                                32.0, 16.0, 32.0, 16.0),
                            child: Container(
                              width: 300,
                              child: TextField(
                                maxLines: 5,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                    const Radius.circular(5.0),
                                  )),
                                  hintText: '',
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 17,
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                  labelStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  focusColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(5.0),
                                      ),
                                      borderSide: BorderSide(
                                        color: Color(0xffC1C1C1),
                                      )),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              ButtonTheme(
                                height: 45,
                                minWidth: 150,
                                child: RaisedButton(
                                    onPressed: () {},
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
                                      'SAVE',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
