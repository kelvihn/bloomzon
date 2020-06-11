import 'package:bloomzon/buyers/buyerdashboard.dart';
import 'package:flutter/material.dart';

class DisputePage extends StatefulWidget {
  @override
  _DisputePageState createState() => _DisputePageState();
}

class _DisputePageState extends State<DisputePage> {
  String currency;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: SingleChildScrollView(
        child: Column(
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
                              builder: (context) => BuyerDashboardPage()),
                        );
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Platform Dispute File ',
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
              height: 20,
            ),
            Center(
              child: Stack(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 0.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Select Subject',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xff262424),
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(16.0, 16.0, 30.0, 16.0),
                        child: FractionallySizedBox(
                          widthFactor: 1.0,
                          child: Container(
                            height: 80,
                            width: 330,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  16.0, 16.0, 30.0, 16.0),
                              child: DropdownButtonHideUnderline(
                                child: new DropdownButtonFormField<String>(
                                  iconEnabledColor: Color(0xff02499B),
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                      const Radius.circular(5.0),
                                    )),
                                    hintText: 'Select Subject',
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10,
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                    labelStyle: TextStyle(
                                      color: Color(0xff02499B),
                                    ),
                                    focusColor: Color(0xff02499B),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(5.0),
                                        ),
                                        borderSide: BorderSide(
                                          color: Color(0xff02499B),
                                        )),
                                  ),
                                  value: currency,
                                  validator: (String newValue) {
                                    if (newValue == null) {
                                      return 'Please enter currency';
                                    }
                                    return null;
                                  },
                                  hint: Text(
                                    '',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xff02499B),
                                    ),
                                  ),
                                  style: TextStyle(
                                    color: Color(0xff02499B),
                                  ),
                                  onChanged: (String newValue) {
                                    setState(() {
                                      currency = newValue;
                                    });
                                  },
                                  items: <String>[
                                    'Delivery',
                                    'Service failure',
                                    'Fraud',
                                  ].map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return new DropdownMenuItem<String>(
                                      value: value,
                                      child: new Text(
                                        value,
                                        style: TextStyle(
                                          color: Color(0xff02499B),
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                ),
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
                              'Report ID',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color(0xff262424),
                                fontSize: 17,
                              ),
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    5.0, 16.0, 32.0, 16.0),
                                child: Container(
                                  width: 190,
                                  child: TextField(
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius: const BorderRadius.all(
                                        const Radius.circular(5.0),
                                      )),
                                      hintText: ' ',
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
                              'Amount',
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
                          padding:
                              const EdgeInsets.fromLTRB(32.0, 16.0, 32.0, 16.0),
                          child: Container(
                            height: 50,
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
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(32.0, 16.0, 32.0, 16.0),
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
                                hintText: 'Type your message',
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
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 40.0, 0.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            ButtonTheme(
                              height: 35,
                              minWidth: 80,
                              child: RaisedButton(
                                  onPressed: () {},
                                  color: Color(0xff02499B),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: Color(0xff02499B),
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10.0),
                                    ),
                                  ),
                                  child: Text(
                                    'Send',
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
                  Container(
                    child: Image.asset('images/cat_bg.png'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
