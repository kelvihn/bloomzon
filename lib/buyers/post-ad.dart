import 'package:bloomzon/buyers/ad-successful.dart';
import 'package:flutter/material.dart';

class PostAdPage extends StatefulWidget {
  @override
  _PostAdPageState createState() => _PostAdPageState();
}

class _PostAdPageState extends State<PostAdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xff02499B),
        elevation: 0.0,
        title: Text(
          'Start Your Ad Marketing',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: Color(0xffF2F2F2),
      body: Column(
        children: <Widget>[
          Center(
            child: Container(
              color: Colors.white,
              margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
              height: 650,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Welcome',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xff262424),
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 300,
                    height: 72,
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                    child: Theme(
                      data: Theme.of(context).copyWith(
                        canvasColor: Color(0xffF2F2F2),
                      ),
                      child: new DropdownButtonFormField<String>(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          filled: true,
                          fillColor: Color(0xffF2F2F2),
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          focusColor: Colors.white,
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                        ),
                        validator: (String newValue) {
                          if (newValue == null) {
                            return 'Please enter';
                          }
                          return null;
                        },
                        hint: Text(
                          'Select Page section',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                        onChanged: (String newValue) {},
                        items: <String>[
                          'Header',
                          'Middle',
                          'Footer',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(
                              value,
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 300,
                    height: 72,
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                    child: Theme(
                      data: Theme.of(context).copyWith(
                        canvasColor: Color(0xffF2F2F2),
                      ),
                      child: new DropdownButtonFormField<String>(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          filled: true,
                          fillColor: Color(0xffF2F2F2),
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          focusColor: Colors.white,
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                        ),
                        validator: (String newValue) {
                          if (newValue == null) {
                            return 'Please enter';
                          }
                          return null;
                        },
                        hint: Text(
                          'Duration',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                        onChanged: (String newValue) {},
                        items: <String>[
                          '1 weeek',
                          '2 weeks',
                          '4 weeks',
                          '2 months',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(
                              value,
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Add Ads banner',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color(0xff262424),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
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
                                'Choose File',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              )),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 16.0, 2.0, 16.0),
                          child: Container(
                            height: 50,
                            width: 170,
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
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 40.0, 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          '(Maximum of 3 files)',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'URL',
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
                      padding:
                          const EdgeInsets.fromLTRB(32.0, 16.0, 32.0, 16.0),
                      child: Container(
                        width: 300,
                        height: 40,
                        child: TextField(
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
                    height: 70,
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
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AdSuccess()),
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
                                'Save & Proceed to pay',
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
    );
  }
}
