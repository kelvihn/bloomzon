import 'package:bloomzon/groceries/add-to-catalogue.dart';
import 'package:bloomzon/groceries/groceriesdashboard.dart';
import 'package:bloomzon/groceries/market_item_single.dart';
import 'package:flutter/material.dart';

class FoodMenuPage extends StatefulWidget {
  @override
  _FoodMenuPageState createState() => _FoodMenuPageState();
}

class _FoodMenuPageState extends State<FoodMenuPage> {
  String currency;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              height: 900,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
                child: Image.asset('images/cat_bg.png'),
              ),
            ),
            Column(
              children: <Widget>[
                Container(
                  color: Color(0xffAF2E1D),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
                    child: Row(
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
                                  builder: (context) =>
                                      GroceriesDashboardPage()),
                            );
                          },
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  90.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Food Menu',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      ButtonTheme(
                        height: 45,
                        minWidth: 150,
                        child: RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddToCataloguePage()),
                              );
                            },
                            color: Color(0xff02499B),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: Color(0xff02499B),
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                            ),
                            child: Text(
                              'Add to Catalogue',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.all(5.0),
                  color: Colors.white,
                  height: 500,
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Intercontinental',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color(0xff02499B),
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                GestureDetector(
                                    onTap: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                              builder: (_) => MarketItemSingle(
                                                    image: 'images/salad.png',
                                                    name: 'Current Salad',
                                                  )));
                                    },
                                    child: Column(
                                      children: <Widget>[
                                        Image.asset('images/salad.png'),
                                        Column(
                                          children: <Widget>[
                                            Text(
                                              'N4,000',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Color(0xff02499B)),
                                            ),
                                            Text(
                                              '(Current salad)',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Color(0xff02499B)),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )),
                                GestureDetector(
                                    onTap: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                              builder: (_) => MarketItemSingle(
                                                    image: 'images/fries.png',
                                                    name: 'With Chicken',
                                                  )));
                                    },
                                    child: Column(
                                      children: <Widget>[
                                        Image.asset('images/fries.png'),
                                        Column(
                                          children: <Widget>[
                                            Text(
                                              'N5000',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Color(0xff02499B)),
                                            ),
                                            Text(
                                              '(With chicken)',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Color(0xff02499B)),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )),
                                GestureDetector(
                                    onTap: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                              builder: (_) => MarketItemSingle(
                                                    image: 'images/pasta.png',
                                                    name: 'Bated Beans',
                                                  )));
                                    },
                                    child: Column(
                                      children: <Widget>[
                                        Image.asset('images/pasta.png'),
                                        Column(
                                          children: <Widget>[
                                            Text(
                                              'N1,000',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Color(0xff02499B)),
                                            ),
                                            Text(
                                              '(Bated beans)',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Color(0xff02499B)),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 9,
                        ),
                        Container(
                          color: Color(0xff707070),
                          height: 1,
                          width: 300,
                        ),
                        SizedBox(
                          height: 9,
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'African Dishes',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color(0xff02499B),
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding:
                                const EdgeInsets.fromLTRB(5.0, 10.0, 0.0, 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                GestureDetector(
                                    onTap: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                              builder: (_) => MarketItemSingle(
                                                    image: 'images/banga1.png',
                                                    name: 'Banga Soup',
                                                  )));
                                    },
                                    child: Column(
                                      children: <Widget>[
                                        Image.asset('images/banga1.png'),
                                        Text(
                                          'N250 (Banga Soup)',
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: Color(0xff02499B)),
                                        ),
                                      ],
                                    )),
                                GestureDetector(
                                    onTap: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                              builder: (_) => MarketItemSingle(
                                                    image: 'images/banga2.png',
                                                    name: 'Banga Soup',
                                                  )));
                                    },
                                    child: Column(
                                      children: <Widget>[
                                        Image.asset('images/banga2.png'),
                                        Text(
                                          'N250 (Banga Soup)',
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: Color(0xff02499B)),
                                        ),
                                      ],
                                    )),
                                GestureDetector(
                                    onTap: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                              builder: (_) => MarketItemSingle(
                                                    image: 'images/banga3.png',
                                                    name: 'Okro',
                                                  )));
                                    },
                                    child: Column(
                                      children: <Widget>[
                                        Image.asset('images/banga3.png'),
                                        Column(
                                          children: <Widget>[
                                            Text(
                                              'N360',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Color(0xff02499B)),
                                            ),
                                            Text(
                                              '(Okro with sad)',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Color(0xff02499B)),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 9,
                        ),
                        Container(
                          color: Color(0xff707070),
                          height: 1,
                          width: 300,
                        ),
                        SizedBox(
                          height: 9,
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Foreign Meal',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color(0xff02499B),
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'No Product Yet',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xff02499B),
                                  fontSize: 25,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
