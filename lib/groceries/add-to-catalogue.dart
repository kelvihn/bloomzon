import 'package:flutter/material.dart';

class AddToCataloguePage extends StatefulWidget {
  @override
  _AddToCataloguePageState createState() => _AddToCataloguePageState();
}

class _AddToCataloguePageState extends State<AddToCataloguePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xff02499B),
        elevation: 0.0,
      ),
      backgroundColor: Color(0xffF2F2F2),
      body: Stack(
        children: <Widget>[
          Container(
            child: Image.asset('images/cat_bg.png'),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            color: Colors.white,
            width: 400,
            height: 600,
            child: Center(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 300,
                    height: 72,
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                    child: Theme(
                      data: Theme.of(context).copyWith(
                        canvasColor: Color(0xffFAFAFA),
                      ),
                      child: new DropdownButtonFormField<String>(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          filled: true,
                          fillColor: Color(0xff02499B),
                          hintStyle: TextStyle(
                            color: Colors.white,
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
                          'Select Catalogue',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                        onChanged: (String newValue) {},
                        items: <String>[
                          'Intercontinental',
                        ].map<DropdownMenuItem<String>>((String value) {
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
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 0.0),
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
                                  Radius.circular(0.0),
                                ),
                              ),
                              child: Text(
                                'Choose Image',
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
                                hintText: '',
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
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 10,
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
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Amount',
                          textAlign: TextAlign.center,
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
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Discount',
                          textAlign: TextAlign.center,
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
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ButtonTheme(
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
                                'Save',
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
        ],
      ),
    );
  }
}
