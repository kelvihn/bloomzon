import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController textEditingController = TextEditingController();
  bool isWriting = false;

  setWritingTo(bool val) {
    setState(() {
      isWriting = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/bg.jpg'), fit: BoxFit.cover)),
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [
                0.1,
                0.4,
                0.7,
                0.9
              ],
                  colors: [
                Colors.white.withOpacity(.9),
                Colors.white.withOpacity(.9),
                Colors.white.withOpacity(.9),
                Colors.white.withOpacity(.9),
              ])),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(children: <Widget>[
                  firstBox(),
                  SizedBox(height: 20),
                  Container(
                      alignment: Alignment.centerRight,
                      child: chatBubble(
                          'Your request has been treated, the seller has been contacted, your goods are currently on transit. We apologize for the inconvenience.',
                          true)),
                  SizedBox(height: 20),
                  Container(
                      alignment: Alignment.centerLeft,
                      child: chatBubble('Thank you', false)),
                ]),
                Container(
                    alignment: Alignment.bottomCenter, child: chatControls())
              ]),
        ),
        Positioned(
          top: 25,
          child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.of(context).pop()),
        ),
      ]),
    ));
  }

  Widget chatControls() {
    return Container(
        height: 70,
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: <Widget>[
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(5),
                decoration:
                    BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
                child: Icon(Icons.add, color: Colors.white),
              ),
            ),
            SizedBox(width: 5),
            Expanded(
                child: TextField(
              controller: textEditingController,
              style: TextStyle(color: Colors.white),
              onChanged: (val) {
                (val.length > 0 && val.trim() != "")
                    ? setWritingTo(true)
                    : setWritingTo(false);
              },
              decoration: InputDecoration(
                  hintText: "Type a message",
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      borderSide: BorderSide.none),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  filled: true,
                  fillColor: Colors.grey[300],
                  suffixIcon: IconButton(
                    icon: Icon(Icons.face, color: Colors.grey),
                    onPressed: () {},
                  )),
            )),
            isWriting
                ? SizedBox.shrink()
                : Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(Icons.record_voice_over, color: Colors.grey)),
            isWriting ? SizedBox.shrink() : Icon(Icons.camera_alt),
            isWriting
                ? Container(
                    margin: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        color: Colors.grey, shape: BoxShape.circle),
                    child: IconButton(
                        icon: Icon(Icons.send, color: Colors.white, size: 15),
                        onPressed: () {}),
                  )
                : Container()
          ],
        ));
  }

  Widget firstBox() {
    return Stack(
      children: <Widget>[
        Container(
          height: 120,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5),
              ),
              image: DecorationImage(
                  image: AssetImage('images/08.png'), fit: BoxFit.cover)),
        ),
        Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 60),
            height: 120,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [
                      0.1,
                      0.4,
                      0.7,
                      0.9
                    ],
                    colors: [
                      Colors.red[900].withOpacity(.9),
                      Colors.red[900].withOpacity(.9),
                      Colors.red[900].withOpacity(.9),
                      Colors.red[900].withOpacity(.9),
                    ]),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                )),
            child: Center(
              child: Text(
                'ADMIN',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
                textAlign: TextAlign.center,
              ),
            )),
      ],
    );
  }

  Widget chatBubble(String message, bool isSender) {
    return Container(
        width: 200,
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: isSender ? Colors.grey[100] : Colors.grey[50],
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 5.0, // soften the shadow
              spreadRadius: 0.5, //extend the shadow
              offset: Offset(
                0.0, // Move to right 10  horizontally
                0.0, // Move to bottom 10 Vertically
              ),
            )
          ],
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('Dec, 2020',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w600)),
                  Text('11:33 am',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w600))
                ],
              ),
              Text(message,
                  style: TextStyle(
                    color: Colors.black,
                  ))
            ]));
  }
}
