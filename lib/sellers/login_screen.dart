import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
    myFocusNode.addListener(() {
      setState(() {});
    });
    myFocusNode2.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    myFocusNode.addListener(() {
      setState(() {});
    });
    myFocusNode2.addListener(() {
      setState(() {});
    });
  }

  FocusNode myFocusNode = new FocusNode();
  FocusNode myFocusNode2 = new FocusNode();

  Widget btnText = Text('LOGIN',
      style: TextStyle(
          color: Colors.white,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600));

  Widget _buildLoginButton() {
    return Container(
      //margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
      height: 50.0,
      decoration: BoxDecoration(
          color: Colors.orange, borderRadius: BorderRadius.circular(25.0)),
      child: Center(
        child: btnText,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.white,
        body: Container(
          padding: EdgeInsets.all(100.0),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Hero(
                    tag: 'logo',
                    child: Container(
                      height: 80.0,
                      child: Image.asset('images/rant_logo.png'),
                    )),
                Text('Na we own be dis oo...',
                    style: TextStyle(
                        fontFamily: 'Poppins', fontWeight: FontWeight.w300)),
                SizedBox(
                  height: 25.0,
                ),
                TextField(
                  focusNode: myFocusNode,
                  //autofocus: true,
                  style: TextStyle(
                      fontSize: 14.0,
                      fontFamily: 'Poppins',
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue[900]),
                      ),
                      labelText: 'Email',
                      labelStyle: TextStyle(
                          color: myFocusNode.hasFocus
                              ? Colors.orange
                              : Colors.grey),
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.grey,
                        fontSize: 14.0,
                      )),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  focusNode: myFocusNode2,
                  // autofocus: true,

                  style: TextStyle(
                      fontSize: 14.0,
                      fontFamily: 'Poppins',
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue[900]),
                      ),
                      labelText: 'Password',
                      labelStyle: TextStyle(
                          color: myFocusNode2.hasFocus
                              ? Colors.orange
                              : Colors.grey),
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.grey,
                        fontSize: 14.0,
                      )),
                ),
                SizedBox(
                  height: 70.0,
                ),
                _buildLoginButton(),
                SizedBox(
                  height: 100.0,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Don\'t have an account yet?',
                          style: TextStyle(
                              fontFamily: 'Poppins', color: Colors.grey)),
                      SizedBox(width: 4.0),
                      Text('Signup',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              color: Colors.orange))
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
