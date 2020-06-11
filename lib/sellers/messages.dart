import 'package:flutter/material.dart';
import 'package:bloomzon/sellers/chat_screen.dart';
import 'package:bloomzon/sellers/new_conversation.dart';

class Messages extends StatefulWidget {
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
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
        child: ListView(children: <Widget>[
          firstBox(),
          SizedBox(height: 20),
          searchBox(),
          messagesBox(),
          messagesBox(),
          messagesBox(),
          messagesBox(),
          messagesBox()
        ]),
      ),
      Positioned(
        top: 25,
        child: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.blue[900]),
            onPressed: () => Navigator.of(context).pop()),
      ),
    ])));
  }

  Widget largeBtn() {
    return GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => NewConversation()));
        },
        child: Container(
            padding: EdgeInsets.all(5),
            // margin: EdgeInsets.only(left: 50),
            height: 35,
            // width: 150,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.blue[900], width: 2)),
            child: Center(
                child: Text('Create new conversation',
                    style: TextStyle(fontSize: 12, color: Colors.blue[900])))));
  }

  Widget firstBox() {
    return Container(
        padding: EdgeInsets.only(left: 15, right: 15, top: 70),
        height: 160,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white,
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
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(5),
            )),
        child: Center(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
              Text(
                'MESSAGES',
                style: TextStyle(
                    color: Colors.blue[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
                textAlign: TextAlign.center,
              ),
              largeBtn()
            ])));
  }

  Widget searchBox() {
    return Container(
        height: 50,
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: MediaQuery.of(context).size.width * 0.95,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 1, color: Colors.black38),
          borderRadius: BorderRadius.circular(25),
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
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.65,
                //padding: EdgeInsets.only(left: 20),
                child: TextField(
                  decoration: InputDecoration.collapsed(hintText: 'Search'),
                ),
              ),
              Icon(Icons.search, color: Colors.grey)
            ]));
  }

  Widget redBox() {
    return Container(
        height: 10,
        width: 10,
        decoration: BoxDecoration(
            color: Colors.red[900], borderRadius: BorderRadius.circular(25)));
  }

  Widget adminBox() {
    return Container(
        padding: EdgeInsets.only(left: 5),
        alignment: Alignment.centerLeft,
        height: 25,
        width: 80,
        decoration: BoxDecoration(
            color: Colors.blue[900], borderRadius: BorderRadius.circular(25)),
        child: Text('Admin',
            style: TextStyle(
                fontSize: 12, color: Colors.white, fontWeight: FontWeight.w600),
            textAlign: TextAlign.left));
  }

  Widget messagesBox() {
    return GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => ChatScreen()));
        },
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  redBox(),
                  SizedBox(width: 10),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                    adminBox(),
                                    SizedBox(width: 8),
                                    Text('8:07 AM',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w600))
                                  ])),
                              SizedBox(width: 60),
                              Text('13/04/2020',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w600))
                            ]),
                        SizedBox(height: 5),
                        Container(
                            width: 300,
                            child: Text(
                                'Your request has been treated, the seller has been contacted, your goods are currenty on transit. We apologize for the inconvenience',
                                style: TextStyle(fontWeight: FontWeight.w600)))
                      ])
                ])));
  }
}
