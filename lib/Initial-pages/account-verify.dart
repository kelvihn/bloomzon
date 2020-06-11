import 'package:bloomzon/agents/verification_files.dart';
import 'package:bloomzon/delivery-merchant/verification_files.dart';
import 'package:bloomzon/manufacturers/step_one.dart';
import 'package:bloomzon/groceries/verification_files.dart';
import 'package:bloomzon/professional-services/prof_verification_files.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:url_launcher/url_launcher.dart';

import 'account-succesful.dart';

class AccountVerifyPage extends StatefulWidget {
  final String category;

  const AccountVerifyPage({Key key, this.category}) : super(key: key);
  @override
  _AccountVerifyPageState createState() => _AccountVerifyPageState();
}

class _AccountVerifyPageState extends State<AccountVerifyPage> {
  Image image1;

  @override
  void initState() {
    super.initState();
    image1 = Image.asset(
      "images/image4.png",
      fit: BoxFit.fill,
    );
  }

  TextEditingController textEditingController = TextEditingController();

  bool hasError = false;
  String currentText = "";
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    precacheImage(image1.image, context);
  }

  _decipherLogic() {
    if (widget.category.toLowerCase() == 'buyers' ||
        widget.category.toLowerCase() == 'sellers' ||
        widget.category.toLowerCase() == 'shopper') {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => AccountSuccess(category: widget.category)),
      );
    } else if (widget.category.toLowerCase() == 'networking associates') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => VerificationFiles()),
      );
    } else if (widget.category.toLowerCase() == 'professional service') {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                ProfVerificationFiles(category: widget.category)),
      );
    } else if (widget.category.toLowerCase() == 'manufacturer') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => StepOneManufacturer()),
      );
    } else if (widget.category.toLowerCase() == 'delivery merchant') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MerchantVerificationFiles()),
      );
    } else if (widget.category.toLowerCase() == 'fast food/groceries vendor') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => GroceryVerificationFiles()),
      );
    }
  }

  /*
'Buyers',
                                'Sellers',
                                'Delivery Merchant',
                                'Fast Food Vendor',
                                'Groceries',
                                'Networking Agent',
                                'Professinal Service',
  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Color(0xff02499B),
        elevation: 0.0,
        //`true` if you want Flutter to automatically add Back Button when needed,
        //or `false` if you want to force your own back button every where
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  child: Image.asset(
                    "images/image4.png",
                    fit: BoxFit.fill,
                  ),
                  height: 300,
                  width: 470,
                ),
                Column(
                  children: <Widget>[
                    Center(
                      child: Text(
                        'Account Verification',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 0.0),
                        child: Text(
                          'Enter the verification code sent to your email',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: 30, top: 20, right: 30, bottom: 50),
                      height: 200,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Center(
                          child: PinCodeTextField(
                            length: 4,
                            obsecureText: false,
                            animationType: AnimationType.fade,
                            pinTheme: PinTheme(
                              activeColor: Color(0xff02499B),
                              inactiveColor: Color(0xff02499B),
                              shape: PinCodeFieldShape.underline,
                              borderRadius: BorderRadius.circular(5),
                              fieldHeight: 50,
                              fieldWidth: 40,
                              inactiveFillColor: Color(0xff02499B),
                            ),
                            animationDuration: Duration(milliseconds: 300),
                            onCompleted: (v) {
                              print("Completed");
                            },
                            onChanged: (value) {
                              print(value);
                              setState(() {
                                currentText = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Didn't get a Code?",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              splashColor: Colors.white,
                              highlightColor: Colors.lightBlue,
                              child: Text(
                                "Click HERE",
                                style: TextStyle(
                                  color: Color(0xffAF2E1D),
                                ),
                              ),
                              onTap: () async {
                                if (await canLaunch("http://www.google.com")) {
                                  await launch("http://www.google.com");
                                }
                              },
                            ),
                          ],
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
                        onPressed: () => _decipherLogic(),
                        color: Color(0xff02499B),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color(0xff02499B),
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(40.0),
                          ),
                        ),
                        child: Text(
                          'CONTINUE',
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
    );
  }
}
