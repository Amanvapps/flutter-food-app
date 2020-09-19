import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterfoodapp/src/pages/favourite_page.dart';
import 'package:flutterfoodapp/src/pages/home_page.dart';
import 'package:flutterfoodapp/src/pages/order_page.dart';
import 'package:flutterfoodapp/src/pages/profile_page.dart';
import 'package:flutterfoodapp/src/scopedModel/main_model.dart';

class MainScreen extends StatefulWidget {

  final MainModel model;

MainScreen({this.model});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  HomePage homePage;
  OrderPage orderPage;
  FavouritePage favouritePage;
  ProfilePage profilePage;

  int currentTabIndex = 0;
  List<Widget> pages;
  Widget currentPage;

  @override
  void initState() {
    // TODO: implement initState

    widget.model.fetchFoods();

    homePage = HomePage();
    orderPage = OrderPage();
    favouritePage = FavouritePage();
    profilePage = ProfilePage();

    pages = [homePage , orderPage , favouritePage , profilePage];
    currentPage = homePage;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index)
        {
          setState(() {
            currentTabIndex = index;
            currentPage = pages[index];
          });
        },
        currentIndex: currentTabIndex,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title:Text('Orders'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            title:Text('Explore'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title:Text('Profile'),
          ),
        ],
      ),
      body: currentPage,
    );
  }
}
