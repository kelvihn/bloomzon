import 'package:flutter/material.dart';

class TrackLivePage extends StatefulWidget {
  @override
  _TrackLivePageState createState() => _TrackLivePageState();
}

class _TrackLivePageState extends State<TrackLivePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text(
          'ROUTING',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: new IconThemeData(color: Colors.white),
        backgroundColor: Color(0xff02499B),
      ),
      backgroundColor: Color(0xffF2F2F2),
      body: SingleChildScrollView(
        child: Container(
          child: SafeArea(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Current Location:',
                            style: TextStyle(
                              color: Colors.black,
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
                          Text(
                            'Start Routing:',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 35,
                            width: 230,
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: UnderlineInputBorder(),
                                filled: true,
                                fillColor: Color(0xffF7F7F7),
                                hintText: "Enter Address",
                                hintStyle: TextStyle(
                                  color: Colors.grey,
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
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 560,
                  width: 500,
                  child: Image.asset('images/map2.png'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
