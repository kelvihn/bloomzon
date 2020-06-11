import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:bloomzon/manufacturers/policies.dart';

class ManufacturersTransactionAttachment extends StatefulWidget {
  @override
  _ManufacturersTransactionAttachmentState createState() =>
      _ManufacturersTransactionAttachmentState();
}

class _ManufacturersTransactionAttachmentState
    extends State<ManufacturersTransactionAttachment> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.grey[200],
            body: SingleChildScrollView(
                child: Column(children: <Widget>[
              firstBox(),
              redCon(),
              Container(
                  height: 100,
                  child: Center(
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                        dataBox('Policies', FontAwesome.book),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              RaisedButton(
                                  onPressed: () {},
                                  color: Colors.red[900],
                                  child: Text('Print',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12))),
                              RaisedButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (_) => PoliciesPage(
                                                policy: 'Policies')));
                                  },
                                  color: Colors.red[900],
                                  child: Text('Update',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12)))
                            ])
                      ]))),
              SizedBox(height: 10),
              Container(
                  height: 100,
                  child: Center(
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                        dataBox('Agreement', FontAwesome.handshake_o),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              RaisedButton(
                                  onPressed: () {},
                                  color: Colors.red[900],
                                  child: Text('Print',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12))),
                              RaisedButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (_) => PoliciesPage(
                                                policy: 'Agreement')));
                                  },
                                  color: Colors.red[900],
                                  child: Text('Update',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12)))
                            ])
                      ]))),
              SizedBox(height: 10),
              Container(
                  height: 100,
                  child: Center(
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                        dataBox('Payment Receipt', FontAwesome.envelope),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              RaisedButton(
                                  onPressed: () {},
                                  color: Colors.red[900],
                                  child: Text('Print',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12))),
                              RaisedButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (_) => PoliciesPage(
                                                policy: 'Payment Receipt')));
                                  },
                                  color: Colors.red[900],
                                  child: Text('Update',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12)))
                            ])
                      ]))),
              SizedBox(height: 10),
              Container(
                  height: 100,
                  child: Center(
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                        dataBox('List of Requests', Icons.group),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              RaisedButton(
                                  onPressed: () {},
                                  color: Colors.red[900],
                                  child: Text('Print',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12))),
                              RaisedButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (_) => PoliciesPage(
                                                policy: 'Listof Requests')));
                                  },
                                  color: Colors.red[900],
                                  child: Text('Update',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12)))
                            ])
                      ]))),
            ]))));
  }

  Widget dataBox(String text, IconData icon) {
    return Container(
        height: 100,
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        width: 220,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(icon, size: 30, color: Colors.blue[900]),
              SizedBox(width: 20),
              Text(text,
                  style: TextStyle(
                      color: Colors.blue[900],
                      fontSize: 16,
                      fontWeight: FontWeight.w600))
            ]));
  }

  Widget redCon() {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        width: MediaQuery.of(context).size.width,
        height: 60,
        color: Colors.red[900],
        child: Center(
            child: Text('Transaction ID: Ose21',
                style: TextStyle(color: Colors.white, fontSize: 18))));
  }

  Widget firstBox() {
    return Stack(
      children: <Widget>[
        Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 60),
            height: 130,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                )),
            child: Center(
              child: Text(
                'Transaction Attachment',
                style: TextStyle(
                    color: Colors.blue[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
                textAlign: TextAlign.center,
              ),
            )),
        Positioned(
            top: 30,
            left: 8,
            child: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.blue[900]),
                onPressed: () => Navigator.of(context).pop())),
        Positioned(
            top: 30,
            right: 8,
            child: IconButton(
                icon: Icon(AntDesign.close, color: Colors.blue[900]),
                onPressed: () => Navigator.of(context).pop()))
      ],
    );
  }
}
