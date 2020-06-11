import 'package:bloomzon/groceries//ad-successful.dart';
import 'package:bloomzon/groceries//post-ad.dart';
import 'package:flutter/material.dart';

class NewAdPage extends StatefulWidget {
  @override
  _NewAdPageState createState() => _NewAdPageState();
}

class _NewAdPageState extends State<NewAdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xff02499B),
        elevation: 0.0,
        title: Text(
          'YOUR ADVERT',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: Color(0xffF2F2F2),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Container(
                color: Colors.white,
                margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                height: 700,
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'March 20, 2019 - April 10,2020',
                              textAlign: TextAlign.left,
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
                      Container(
                          width: 350,
                          height: 100,
                          padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                          child: Image.asset('images/ad_banner.png')),
                      Container(
                          width: 350,
                          height: 100,
                          padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                          child: Image.asset('images/ad_banner2.png')),
                      Container(
                          width: 350,
                          height: 100,
                          padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                          child: Image.asset('images/ad_banner.png')),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        color: Colors.black,
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              RaisedButton(
                                color: Colors.black,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PostAdPage()),
                                  );
                                },
                                child: Text(
                                  'Post New Ads',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(20.0, 0.0, 40.0, 0.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Details',
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
                      Container(
                        height: 2,
                        color: Colors.grey,
                        width: 300,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(20.0, 0.0, 40.0, 0.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'URL:',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xff262424),
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Page Section:',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xff262424),
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Amount:',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xff262424),
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Duration:',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xff262424),
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Status:',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xff262424),
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Renewal date:',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xff262424),
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'sqtwebsolution',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xff262424),
                                    fontSize: 17,
                                  ),
                                ),
                                Text(
                                  'Middle',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xff262424),
                                    fontSize: 17,
                                  ),
                                ),
                                Text(
                                  '5,000',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xff262424),
                                    fontSize: 17,
                                  ),
                                ),
                                Text(
                                  '1 year',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xff262424),
                                    fontSize: 17,
                                  ),
                                ),
                                Text(
                                  'Active',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xff262424),
                                    fontSize: 17,
                                  ),
                                ),
                                Text(
                                  '04/04/20',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xff262424),
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            ButtonTheme(
                              height: 39,
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
                                    'Deactive',
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
