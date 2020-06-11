import 'package:flutter/material.dart';

class DeliveryStatusPage extends StatefulWidget {
  @override
  _DeliveryStatusPageState createState() => _DeliveryStatusPageState();
}

class _DeliveryStatusPageState extends State<DeliveryStatusPage> {
  String status;
  String _country;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Center(
          child: Text(
            'Delivery Status',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
        ),
        iconTheme: new IconThemeData(color: Colors.white),
        backgroundColor: Color(0xff02499B),
      ),
      backgroundColor: Color(0xff2B2950),
      body: SingleChildScrollView(
        child: Container(
          child: SafeArea(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 35,
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xff707070),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                    ),
                    width: 350,
                    height: 110,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Update Delivery Status',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.asset(
                        'images/yard.png',
                        width: 170,
                      ),
                      Image.asset(
                        'images/yard2.png',
                        width: 170,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.asset(
                        'images/yard3.png',
                        width: 170,
                      ),
                      Image.asset(
                        'images/yard4.png',
                        width: 170,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: FractionallySizedBox(
                    widthFactor: 1.0,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(32.0, 0.0, 32.0, 0.0),
                      child: Theme(
                        data: Theme.of(context).copyWith(
                          canvasColor: Color(0xff707070),
                        ),
                        child: new DropdownButtonFormField<String>(
                          iconEnabledColor: Colors.grey,
                          value: _country,
                          decoration: InputDecoration(
                            hintText: 'Delivery Action',
                            hintStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                            filled: true,
                            fillColor: Color(0xff2B2950),
                            labelStyle: TextStyle(
                              color: Color(0xff02499B),
                            ),
                            focusColor: Color(0xff02499B),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(2.0),
                              ),
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          hint: Text(
                            '',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          onChanged: (String newValue) {
                            setState(() {
                              status = newValue;
                            });
                          },
                          validator: (String newValue) {
                            if (newValue == null) {
                              return 'Please enter country';
                            }
                            return null;
                          },
                          items: <String>[
                            'Processing',
                            'On Transit',
                            'Delivered to client',
                            'Await balance payment',
                            'Closed',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return new DropdownMenuItem<String>(
                              value: value,
                              child: new Text(
                                value,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
