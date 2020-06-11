import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:bloomzon/sellers/reply_review.dart';

class Reviews extends StatefulWidget {
  @override
  _ReviewsState createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
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
          child: ListView(
            children: <Widget>[
              firstBox(),
              GestureDetector(
                  child: caseBox('He\'s a good seller', 'Ose214'),
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => ReplyReview()));
                  }),
              GestureDetector(
                  child: caseBox('He\'s a good seller', 'Chuks'),
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => ReplyReview()));
                  }),
              GestureDetector(
                  child: caseBox('He\'s a good seller', 'Chuks'),
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => ReplyReview()));
                  }),
              GestureDetector(
                  child: caseBox('He\'s a good seller', 'Chuks'),
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => ReplyReview()));
                  }),
              GestureDetector(
                  child: caseBox('He\'s a good seller', 'Chuks'),
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => ReplyReview()));
                  }),
              GestureDetector(
                  child: caseBox('He\'s a good seller', 'Chuks'),
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => ReplyReview()));
                  }),
              GestureDetector(
                  child: caseBox('He\'s a good seller', 'Chuks'),
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => ReplyReview()));
                  }),
            ],
          ))
    ])));
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
                      Colors.blue[900].withOpacity(.9),
                      Colors.blue[900].withOpacity(.9),
                      Colors.blue[900].withOpacity(.9),
                      Colors.blue[900].withOpacity(.9),
                    ]),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                )),
            child: Center(
              child: Text(
                'All Review & Feedback',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
                textAlign: TextAlign.center,
              ),
            )),
        Positioned(
            top: 30,
            left: 8,
            child: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.of(context).pop()))
      ],
    );
  }

  Widget caseBox(String message, String name) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              iconBox(),
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
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                adminBox(name),
                                SizedBox(width: 8),
                                Text('12:50 PM',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w600))
                              ])),
                          SizedBox(width: 60),
                          Column(children: <Widget>[
                            ratingBar(),
                            SizedBox(height: 10),
                            smallBtn()
                          ])
                        ]),
                    SizedBox(height: 5),
                    Container(
                        width: 300,
                        child: Text(message,
                            style: TextStyle(fontWeight: FontWeight.w600)))
                  ])
            ]));
  }

  Widget adminBox(String name) {
    return Container(
        padding: EdgeInsets.only(left: 5),
        alignment: Alignment.centerLeft,
        height: 25,
        width: 80,
        decoration: BoxDecoration(
            color: Colors.blue[900], borderRadius: BorderRadius.circular(25)),
        child: Text(name,
            style: TextStyle(
                fontSize: 12, color: Colors.white, fontWeight: FontWeight.w600),
            textAlign: TextAlign.left));
  }

  Widget smallBtn() {
    return Container(
        // margin: EdgeInsets.only(left: 50),
        height: 20,
        width: 40,
        decoration: BoxDecoration(
            //color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.blue[900], width: 2)),
        child: Center(
            child: Text('Edit',
                style: TextStyle(fontSize: 12, color: Colors.blue[900]))));
  }

  Widget ratingBar() {
    return Container(
        child: RatingBar(
      initialRating: 3,
      itemSize: 12,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      //itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    ));
  }

  Widget iconBox() {
    return Container(
        width: 30,
        child: Icon(Icons.account_circle, size: 30, color: Colors.grey));
  }
}
