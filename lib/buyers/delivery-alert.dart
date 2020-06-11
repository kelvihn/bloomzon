import 'package:flutter/material.dart';

class DeliveryAlertPage extends StatefulWidget {
  @override
  _DeliveryAlertPageState createState() => _DeliveryAlertPageState();
}

class _DeliveryAlertPageState extends State<DeliveryAlertPage> {
  String status;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text(
          'Your Product Delivery Alert',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 17,
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
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                child: Stack(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          45.0, 35.0, 0.0, 0.0),
                                      child: Text(
                                        '9',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 30, color: Colors.white),
                                      ),
                                    ),
                                    Image.asset('images/bar1.png'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Container(
                                child: Stack(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          45.0, 35.0, 0.0, 0.0),
                                      child: Text(
                                        '2',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 30, color: Colors.white),
                                      ),
                                    ),
                                    Image.asset('images/bar2.png'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      child: Text(
                        'Total Delivered Product',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Product in Transit',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                      width: 230,
                      height: 100,
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                      ),
                      child: Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Image.asset('images/item2.png'),
                                  Image.asset('images/item3.png'),
                                ],
                              ),
                              Image.asset('images/item4.png')
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                            height: 80,
                            width: 1,
                            color: Color(0xff2B2950),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Billing Address:',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Amount:',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Delivery Agent:',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 110,
                      margin: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          border: Border.all(color: Colors.white)),
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 16.0),
                        child: Theme(
                          data: Theme.of(context).copyWith(
                            canvasColor: Color(0xff707070),
                          ),
                          child: new DropdownButtonFormField<String>(
                            iconEnabledColor: Colors.grey,
                            decoration: InputDecoration(
                              hintText: 'Edit Status',
                              hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                              filled: true,
                              fillColor: Color(0xff2B2950),
                              labelStyle: TextStyle(
                                color: Color(0xff02499B),
                              ),
                              focusColor: Color(0xff02499B),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(50.0),
                                ),
                                borderSide: BorderSide(
                                  color: Color(0xff2B2950),
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
                            items: <String>[
                              'Packaged',
                              'Recieved',
                              'On Transit',
                              'Warehouse',
                            ].map<DropdownMenuItem<String>>((String value) {
                              return new DropdownMenuItem<String>(
                                value: value,
                                child: new Text(
                                  value,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                      width: 230,
                      height: 100,
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                      ),
                      child: Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Image.asset('images/item2.png'),
                                  Image.asset('images/item3.png'),
                                ],
                              ),
                              Image.asset('images/item4.png')
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                            height: 80,
                            width: 1,
                            color: Color(0xff2B2950),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Billing Address:',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Amount:',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Delivery Agent:',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 110,
                      margin: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          border: Border.all(color: Colors.white)),
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 16.0),
                        child: Theme(
                          data: Theme.of(context).copyWith(
                            canvasColor: Color(0xff707070),
                          ),
                          child: new DropdownButtonFormField<String>(
                            iconEnabledColor: Colors.grey,
                            decoration: InputDecoration(
                              hintText: 'Edit Status',
                              hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                              filled: true,
                              fillColor: Color(0xff2B2950),
                              labelStyle: TextStyle(
                                color: Color(0xff02499B),
                              ),
                              focusColor: Color(0xff02499B),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(50.0),
                                ),
                                borderSide: BorderSide(
                                  color: Color(0xff2B2950),
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
                            items: <String>[
                              'Packaged',
                              'Recieved',
                              'On Transit',
                              'Warehouse',
                            ].map<DropdownMenuItem<String>>((String value) {
                              return new DropdownMenuItem<String>(
                                value: value,
                                child: new Text(
                                  value,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
