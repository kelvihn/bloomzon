import 'package:bloomzon/Initial-pages/reset-password.dart';
import 'package:bloomzon/Initial-pages/verify2.dart';
import 'package:bloomzon/agents/agentdashboard.dart';
import 'package:bloomzon/buyers/buyerdashboard.dart';
import 'package:bloomzon/delivery-merchant/deliverydashboard.dart';
import 'package:bloomzon/groceries/groceriesdashboard.dart';
import 'package:bloomzon/manufacturers/manufacturers_dash.dart';
import 'package:bloomzon/professional-services/proservicedashboard.dart';
import 'package:bloomzon/sellers/home_page.dart';
import 'package:flutter/material.dart';
import 'authenticate.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  Image image1;

  TextEditingController emailInputController;
  TextEditingController pwdInputController;

  bool _termsChecked = true;
  String password = 'bloom234';
  String buyerEmail = 'bloombuyer@gmail.com';
  String sellerEmail = 'bloomseller@gmail.com';
  String manufacturerEmail = 'bloommanufacturer@gmail.com';
  String merchantEmail = 'bloommerchant@gmail.com';
  String networkAgent = 'bloomnetagent@gmail.com';
  String grocery = 'bloomgrocery@gmail.com';
  String professional = 'bloomprofessional@gmail.com';
  String shopper = 'bloomshopper@gmail.com';

  final GlobalKey<FormState> _registerFormKey = GlobalKey<FormState>();

  @override
  void initState() {
    emailInputController = new TextEditingController();
    pwdInputController = new TextEditingController();
    super.initState();
    image1 = Image.asset(
      "images/image4.png",
      fit: BoxFit.fill,
    );
  }

  _notifier(String serverRes) {
    _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text(serverRes)));
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    precacheImage(image1.image, context);
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
                    height: 190,
                    width: 470,
                  ),
                  Column(
                    children: <Widget>[
                      Center(child: Image.asset('images/logo.png')),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Text(
                          'User Login',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Form(
                key: _registerFormKey,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Username:',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xff02499B),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Container(
                        height: 80,
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(32.0, 16.0, 32.0, 16.0),
                          child: TextFormField(
                            controller: emailInputController,
                            style: TextStyle(
                              color: Color(0xff02499B),
                            ),
                            enabled: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                const Radius.circular(50.0),
                              )),
                              hintText: 'Email or Phone Number',
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 10,
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
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Container(
                        height: 80,
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(32.0, 16.0, 32.0, 16.0),
                          child: TextFormField(
                            controller: pwdInputController,
                            style: TextStyle(
                              color: Color(0xff02499B),
                            ),
                            enabled: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                const Radius.circular(50.0),
                              )),
                              hintText: 'More than 6 characters',
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 11,
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
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(70.0, 0.0, 0.0, 0.0),
                        child: Container(
                          height: 65,
                          child: Theme(
                            data: ThemeData(
                              unselectedWidgetColor: Color(0xff02499B),
                            ),
                            child: CheckboxListTile(
                              title: new Text(
                                "Remember me",
                                style: TextStyle(
                                  color: Color(0xff02499B),
                                  fontSize: 12,
                                ),
                              ),
                              value: _termsChecked,
                              selected: false,
                              checkColor: Color(0xff02499B),
                              activeColor: Colors.blue,
                              controlAffinity: ListTileControlAffinity.leading,
                              onChanged: (bool value) =>
                                  setState(() => _termsChecked = value),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(80.0, 0.0, 0.0, 0.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                'Forgot your password Click',
                                style: TextStyle(
                                  color: Color(0xff02499B),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ResetPage()),
                                  );
                                },
                                child: Text(
                                  "HERE",
                                  style: TextStyle(
                                    color: Color(0xffAF2E1D),
                                  ),
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
                                'Forgot your username Click',
                                style: TextStyle(
                                  color: Color(0xff02499B),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ResetPage()),
                                  );
                                },
                                child: Text(
                                  "HERE",
                                  style: TextStyle(
                                    color: Color(0xffAF2E1D),
                                  ),
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
                    ButtonTheme(
                      height: 49,
                      minWidth: 200,
                      child: RaisedButton(
                          onPressed: () {
                            _decipherDashboardLogic();
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
                            'LOGIN',
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
      ),
    );
  }

  _decipherDashboardLogic() {
    if (emailInputController.text == '' || pwdInputController.text == '') {
      return _notifier('Please, kindly fill all required details.');
    } else {
      if (emailInputController.text == buyerEmail &&
          pwdInputController.text == password) {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => LoginVerify(category: 'buyers')),
        );
      } else if (emailInputController.text == sellerEmail &&
          pwdInputController.text == password) {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => LoginVerify(category: 'sellers')),
        );
      } else if (emailInputController.text == merchantEmail &&
          pwdInputController.text == password) {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => LoginVerify(category: 'delivery merchant')),
        );
      } else if (emailInputController.text == networkAgent &&
          pwdInputController.text == password) {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  LoginVerify(category: 'networking associates')),
        );
      } else if (emailInputController.text == grocery &&
          pwdInputController.text == password) {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  LoginVerify(category: 'fast food/groceries vendor')),
        );
      } else if (emailInputController.text == professional &&
          pwdInputController.text == password) {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  LoginVerify(category: 'professional service')),
        );
      } else if (emailInputController.text == manufacturerEmail &&
          pwdInputController.text == password) {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => LoginVerify(category: 'manufacturer')),
        );
      }else if (emailInputController.text == shopper &&
          pwdInputController.text == password) {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => LoginVerify(category: 'shopper')),
        );
      } else {
        return _notifier('These details seems to be wrong. Please try again.');
      }
    }
  }
}
