import 'package:bloomzon/Initial-pages/login.dart';
import 'package:flutter/material.dart';

import 'account-verify.dart';

class AccountCreationPage extends StatefulWidget {
  @override
  _AccountCreationPageState createState() => _AccountCreationPageState();
}

class _AccountCreationPageState extends State<AccountCreationPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List<String> itemDrop = [
    'Buyers',
    'Sellers',
    'Delivery Merchant',
    'Fast Food Vendor',
    'Groceries',
    'Networking Associates',
    'Professinal Service',
    'Shopper'
  ]; // Option 2
  String selectedItem;
  Image image1;
  String currency;

  @override
  void initState() {
    super.initState();
    image1 = Image.asset(
      "images/image4.png",
      fit: BoxFit.fill,
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    precacheImage(image1.image, context);
  }

  _notifier(String serverRes) {
    _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text(serverRes)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Color(0xff02499B),
        elevation: 0.0,
        //`true` if you want Flutter to automatically add Back Button when needed,
        //or `false` if you want to force your own back button every where
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    child: Image.asset(
                      "images/image4.png",
                      fit: BoxFit.fill,
                    ),
                    height: 200,
                    width: 470,
                  ),
                  Column(
                    children: <Widget>[
                      Center(
                        child: Text(
                          'Setup an Account',
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Select Account Type',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 330,
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(16.0, 16.0, 30.0, 16.0),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButtonFormField<String>(
                              iconEnabledColor: Color(0xff02499B),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(
                                  const Radius.circular(50.0),
                                )),
                                hintText: '',
                                hintStyle: TextStyle(
                                  color: Color(0xff02499B),
                                  fontSize: 13,
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                labelStyle: TextStyle(
                                  color: Color(0xff02499B),
                                ),
                                focusColor: Color(0xff02499B),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(
                                      const Radius.circular(50.0),
                                    ),
                                    borderSide: BorderSide(
                                      color: Color(0xff02499B),
                                    )),
                              ),
                              value: selectedItem,
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
                                  selectedItem = newValue;
                                });
                              },
                              items: <String>[
                                'Buyers',
                                'Sellers',
                                'Delivery Merchant',
                                'Fast Food/Groceries Vendor',
                                'Networking Associates',
                                'Professional Service',
                                'Manufacturer'
                              ].map<DropdownMenuItem<String>>((String value) {
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
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Email Address',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color(0xff02499B),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(32.0, 16.0, 32.0, 16.0),
                        child: Container(
                          height: 45,
                          width: 300,
                          child: TextField(
                            style: TextStyle(
                              color: Color(0xff02499B),
                            ),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                const Radius.circular(50.0),
                              )),
                              hintText: '',
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              labelStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              focusColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(50.0),
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
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Password:',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff02499B),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
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
                          height: 45,
                          width: 300,
                          child: TextFormField(
                            style: TextStyle(
                              color: Color(0xff02499B),
                            ),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                const Radius.circular(50.0),
                              )),
                              hintText: '',
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              labelStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              focusColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(50.0),
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
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Select Operation Currency:',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff02499B),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
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
                          padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                          child: Theme(
                            data: Theme.of(context).copyWith(
                              canvasColor: Colors.white,
                            ),
                            child: DropdownButtonHideUnderline(
                              child: new DropdownButtonFormField<String>(
                                iconEnabledColor: Color(0xff02499B),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                    const Radius.circular(50.0),
                                  )),
                                  hintText:
                                      'We operate on Naira, Dollar & Pounds',
                                  hintStyle: TextStyle(
                                    color: Color(0xff02499B),
                                    fontSize: 13,
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                  labelStyle: TextStyle(
                                    color: Color(0xff02499B),
                                  ),
                                  focusColor: Color(0xff02499B),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(50.0),
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
                                  '\₦Naira',
                                  '\$Dollar',
                                  '\£Pounds',
                                ].map<DropdownMenuItem<String>>((String value) {
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
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Already have an account? ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff02499B),
                              fontSize: 15,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()),
                              );
                            },
                            child: Text(
                              'Login',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xffC91111),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ButtonTheme(
                      height: 49,
                      minWidth: 200,
                      child: RaisedButton(
                          onPressed: () {
                            if (selectedItem == null || selectedItem == '') {
                              _notifier('Please select an account type');
                            } else {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AccountVerifyPage(
                                        category: selectedItem)),
                              );
                            }
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
                            'NEXT',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
