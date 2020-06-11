import 'package:flutter/material.dart';

class StoreInPage extends StatefulWidget {
  @override
  _StoreInPageState createState() => _StoreInPageState();
}

class _StoreInPageState extends State<StoreInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xff02499B),
        elevation: 0.0,
        title: Text(
          "Store In WareHouse",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: SafeArea(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Storage Location:',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Text(
                              'Description:',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Text(
                              'Time In:',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Text(
                              'Sender Name:',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Text(
                              'Product:',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Text(
                              'Buyer Name:',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Text(
                              'Billing Address:',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Text(
                              'Buyer No:',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Text(
                              'Amount:',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Text(
                              'Delivery Fee:',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              width: 150,
                              height: 33,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                  filled: true,
                                  fillColor: Color(0xffF4F4F4),
                                  hintText: "",
                                  hintStyle: TextStyle(
                                    color: Color(0xff02499B),
                                  ),
                                  focusColor: Colors.white,
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
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
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: 150,
                              height: 33,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                  filled: true,
                                  fillColor: Color(0xffF4F4F4),
                                  hintText: "",
                                  hintStyle: TextStyle(
                                    color: Color(0xff02499B),
                                  ),
                                  focusColor: Colors.white,
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
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
                            SizedBox(
                              height: 12,
                            ),
                            SizedBox(
                              width: 150,
                              height: 33,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                  filled: true,
                                  fillColor: Color(0xffF4F4F4),
                                  hintText: "",
                                  hintStyle: TextStyle(
                                    color: Color(0xff02499B),
                                  ),
                                  focusColor: Colors.white,
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
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
                            SizedBox(
                              height: 12,
                            ),
                            SizedBox(
                              width: 150,
                              height: 33,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                  filled: true,
                                  fillColor: Color(0xffF4F4F4),
                                  hintText: "",
                                  hintStyle: TextStyle(
                                    color: Color(0xff02499B),
                                  ),
                                  focusColor: Colors.white,
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
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
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              width: 150,
                              height: 33,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Image.asset('images/item6.png'),
                                  Image.asset('images/item4.png'),
                                  Image.asset('images/item12.png'),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            SizedBox(
                              width: 150,
                              height: 33,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                  filled: true,
                                  fillColor: Color(0xffF4F4F4),
                                  hintText: "",
                                  hintStyle: TextStyle(
                                    color: Color(0xff02499B),
                                  ),
                                  focusColor: Colors.white,
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
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
                            SizedBox(
                              height: 12,
                            ),
                            SizedBox(
                              width: 150,
                              height: 33,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                  filled: true,
                                  fillColor: Color(0xffF4F4F4),
                                  hintText: "",
                                  hintStyle: TextStyle(
                                    color: Color(0xff02499B),
                                  ),
                                  focusColor: Colors.white,
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
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
                            SizedBox(
                              height: 12,
                            ),
                            SizedBox(
                              width: 150,
                              height: 33,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                  filled: true,
                                  fillColor: Color(0xffF4F4F4),
                                  hintText: "",
                                  hintStyle: TextStyle(
                                    color: Color(0xff02499B),
                                  ),
                                  focusColor: Colors.white,
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
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
                            SizedBox(
                              height: 12,
                            ),
                            SizedBox(
                              width: 150,
                              height: 33,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                  filled: true,
                                  fillColor: Color(0xffF4F4F4),
                                  hintText: "",
                                  hintStyle: TextStyle(
                                    color: Color(0xff02499B),
                                  ),
                                  focusColor: Colors.white,
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
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
                            SizedBox(
                              height: 12,
                            ),
                            SizedBox(
                              width: 150,
                              height: 33,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                  filled: true,
                                  fillColor: Color(0xffF4F4F4),
                                  hintText: "",
                                  hintStyle: TextStyle(
                                    color: Color(0xff02499B),
                                  ),
                                  focusColor: Colors.white,
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
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
                      ],
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ButtonTheme(
                          height: 49,
                          minWidth: 200,
                          child: RaisedButton(
                              onPressed: () {},
                              color: Color(0xff02499B),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Color(0xff02499B),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(40.0),
                                ),
                              ),
                              child: Text(
                                'Store',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
