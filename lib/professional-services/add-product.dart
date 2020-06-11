import 'package:flutter/material.dart';

class AddProductPage extends StatefulWidget {
  @override
  _AddProductPageState createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xffF2F2F2),
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Color(0xff02499B),
        ),
      ),
      backgroundColor: Color(0xffF2F2F2),
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                child: ButtonTheme(
                  height: 50,
                  minWidth: 20,
                  child: RaisedButton(
                      onPressed: () {},
                      color: Color(0xffB4B4B4),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Color(0xffB4B4B4),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      child: Text(
                        'Choose Image',
                        style: TextStyle(color: Colors.black, fontSize: 11),
                      )),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 16.0, 12.0, 16.0),
                  child: Container(
                    height: 50,
                    width: 200,
                    child: TextField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                          const Radius.circular(5.0),
                        )),
                        hintText: 'No file Chosen',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                        focusColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(5.0),
                            ),
                            borderSide: BorderSide(
                              color: Color(0xff02499B),
                            )),
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                child: ButtonTheme(
                  height: 50,
                  minWidth: 20,
                  child: RaisedButton(
                      onPressed: () {},
                      color: Color(0xffB4B4B4),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Color(0xffB4B4B4),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      child: Text(
                        'Choose Image',
                        style: TextStyle(color: Colors.black, fontSize: 11),
                      )),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 16.0, 12.0, 16.0),
                  child: Container(
                    height: 50,
                    width: 200,
                    child: TextField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                          const Radius.circular(5.0),
                        )),
                        hintText: 'No file Chosen',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                        focusColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(5.0),
                            ),
                            borderSide: BorderSide(
                              color: Color(0xff02499B),
                            )),
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Description',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff262424),
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 16.0, 32.0, 16.0),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 0.0, 50.0, 20.0),
                child: ButtonTheme(
                  height: 39,
                  minWidth: 90,
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
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  'Amount',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff262424),
                    fontSize: 17,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 16.0, 32.0, 16.0),
                  child: Container(
                    width: 200,
                    height: 40,
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
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ButtonTheme(
                  height: 49,
                  minWidth: 90,
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
                        'ADD PRODUCT',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
