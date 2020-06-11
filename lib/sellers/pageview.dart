import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:bloomzon/sellers/home_page.dart';
import 'package:bloomzon/sellers/messages.dart';
import 'package:bloomzon/sellers/profile.dart';

class PageViewScreen extends StatefulWidget {
  @override
  _PageViewScreenState createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  int _page = 0;
  double labelFontSize = 10;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController();
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  void navigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        controller: pageController,
        children: <Widget>[SellerHomePage(), Profile(), Messages()],
        onPageChanged: onPageChanged,
      ),
      bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: CupertinoTabBar(
              border: Border.all(color: Colors.white),
              backgroundColor: Colors.white,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.notifications,
                      color: (_page == 0) ? Colors.blue[900] : Colors.grey,
                    ),
                    title: Text('Home',
                        style: TextStyle(
                            color:
                                (_page == 0) ? Colors.blue[900] : Colors.grey,
                            fontSize: labelFontSize))),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.account_circle,
                      color: (_page == 1) ? Colors.blue[900] : Colors.grey,
                    ),
                    title: Text('Account',
                        style: TextStyle(
                            color:
                                (_page == 1) ? Colors.blue[900] : Colors.grey,
                            fontSize: labelFontSize))),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.mail,
                      color: (_page == 2) ? Colors.blue[900] : Colors.grey,
                    ),
                    title: Text('Messages',
                        style: TextStyle(
                            color:
                                (_page == 2) ? Colors.blue[900] : Colors.grey,
                            fontSize: labelFontSize))),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.exit_to_app,
                      color: Colors.grey,
                    ),
                    title: Text('Logout',
                        style: TextStyle(
                            color: Colors.grey, fontSize: labelFontSize)))
              ],
              onTap: navigationTapped,
              currentIndex: _page)),
    );
  }
}
