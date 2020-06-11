import 'package:bloomzon/buyers/buyerdashboard.dart';
import 'package:flutter/material.dart';

class Chat2Page extends StatefulWidget {
  @override
  _Chat2PageState createState() => _Chat2PageState();
}

class _Chat2PageState extends State<Chat2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/admin_bg.png'),
                          fit: BoxFit.cover)),
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BuyerDashboardPage()),
                            );
                          },
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(70.0, 20.0, 0.0, 0.0),
                          child: Text(
                            'CHAT',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Wrap(
                    textDirection: TextDirection.rtl,
                    direction: Axis.horizontal,
                    crossAxisAlignment: WrapCrossAlignment.end,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                '11:33 AM',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 10.0),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          new Material(
                            elevation: 10.0,
                            color: Color(0xffF5FCFF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
                                  bottomLeft: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0)),
                              side: BorderSide(
                                color: Colors.white12,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 20.0),
                              child: Text(
                                'Do you need a call from us? Or want to continue with the chat?',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 13.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 35.0,
                    margin: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: IconButton(
                      splashColor: Colors.black,
                      icon: Icon(
                        Icons.attach_file,
                        color: Color(0xffBBBBBB),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Flexible(
                    child: TextFormField(
                      keyboardType: TextInputType.multiline,
                      minLines: 1,
                      maxLines: 5,
                      validator: (String input) {
                        if (input.isEmpty) {
                          return "Please enter message";
                        }

                        return null;
                      },
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                          hintText: "",
                          labelText: "Type a message",
                          labelStyle: TextStyle(color: Color(0xffBBBBBB)),
                          fillColor: Colors.white,
                          filled: true,
                          focusColor: Colors.blue,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(),
                          )),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: IconButton(
                      splashColor: Colors.grey,
                      icon: Icon(
                        Icons.send,
                        color: Color(0xff02499B),
                      ),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
