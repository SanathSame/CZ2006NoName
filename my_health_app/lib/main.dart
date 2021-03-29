import 'dart:ui';

import 'package:flutter/material.dart';
import '/UI/PageOne.dart';
import '/UI/PageTwo.dart';
import '/UI/HealthProfileUI.dart';
import '/UI/UserProfileUI.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          //primarySwatch: Colors.lightGreen[300],
          ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  UserProfileUI u1;
  PageOne one;
  PageTwo two;
  HealthProfileUI h1;
  List<Widget> pages;
  Widget currentPage;
  int currentTab = 0;

  @override
  void initState() {
    u1 = UserProfileUI(nameHolder: "Aks");
    h1 = HealthProfileUI();
    one = PageOne();
    two = PageTwo();
    pages = [h1, one, two, u1];
    currentPage = one;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentPage,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentTab,
        onTap: (int index) {
          setState(() {
            currentTab = index;
            currentPage = pages[index];
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility),
            label: "Health profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant_menu_rounded),
            label: "Daily diet",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.coronavirus_outlined),
            label: "Infectious",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box_rounded),
            label: "User Profile",
          ),
        ],
      ),
    );
  }
}
