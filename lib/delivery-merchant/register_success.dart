import 'package:bloomzon/Initial-pages/login.dart';
import 'package:bloomzon/delivery-merchant/deliverydashboard.dart';
import 'package:flutter/material.dart';

class MerchantSuccess extends StatefulWidget {
  @override
  _MerchantSuccessState createState() => _MerchantSuccessState();
}

class _MerchantSuccessState extends State<MerchantSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 90),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('images/logo2.png', height: 70),
                Text('Thank You',
                    style: TextStyle(
                      color: Colors.red[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    )),
                Stack(children: <Widget>[
                  Image.asset('images/mark2.png', height: 170),
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 0,
                    bottom: 0,
                    child: Image.asset('images/redmark.png', height: 60),
                  )
                ]),
                Text(
                  'Kindly check your mail for a scheduled interview date',
                  style: TextStyle(
                    color: Colors.red[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => DeliveryDashboardPage()));
                    },
                    child: redBtn())
              ],
            )));
  }

  Widget redBtn() {
    return Container(
        alignment: Alignment.center,
        height: 30,
        width: 80,
        decoration: BoxDecoration(
          color: Colors.red[900],
          borderRadius: BorderRadius.circular(25),
        ),
        child:
            Text('Login', style: TextStyle(color: Colors.white, fontSize: 12)));
  }
}
