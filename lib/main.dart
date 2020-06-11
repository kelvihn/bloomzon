import 'dart:async';

import 'package:bloomzon/Initial-pages/welcomePage.dart';
import 'package:flutter/material.dart';

void main() async {
  Timer(Duration(seconds: 3), () {
    return runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}
