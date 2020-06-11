import 'package:bloomzon/buyers/bottom-nav.dart';
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
          'Live Tracking',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
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
                  height: 560,
                  width: 500,
                  child: Image.asset('images/map2.png'),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
