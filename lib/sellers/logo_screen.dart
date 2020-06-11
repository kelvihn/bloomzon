import 'dart:async';

import 'package:flutter/material.dart';
import 'package:bloomzon/sellers/login_screen.dart';

class LogoScreen extends StatefulWidget {
  @override
  _LogoScreenState createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> {
  _navigate() {
    return Navigator.push(
        context, MaterialPageRoute(builder: (_) => LoginScreen()));
  }

  @override
  void initState() {
    super.initState();
    _buildDisplay();
  }

  @override
  void dispose() {
    super.dispose();
    _buildDisplay();
  }

  _buildDisplay() {
    return Timer(Duration(seconds: 5), _navigate);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Hero(
                tag: 'logo',
                child: Container(
                  child: Image.asset('images/rant_logo.png'),
                )),
            SizedBox(height: 5.0),
            Text('Na we own be dis oo...',
                style: TextStyle(
                    fontFamily: 'Poppins', fontWeight: FontWeight.w600))
          ],
        )));
  }
}
