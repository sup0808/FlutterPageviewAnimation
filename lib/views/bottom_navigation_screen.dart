import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pageview_animation/views/profile_screen.dart';
import 'package:flutter_pageview_animation/views/settings_screen.dart';


import '../main.dart';
import 'contact_screen.dart';
import 'help_screen.dart';
import 'home_screen.dart';
import 'nav_drawer_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  int selectedIndex = 0;

  BottomNavigationScreen({required this.selectedIndex});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  onItemTapped(int index) {
    setState(() {
      widget.selectedIndex = index;
      currentIndex = widget.selectedIndex;
    });
  }

  @override
  void initState() {
    onItemTapped(widget.selectedIndex);
    super.initState();
  }

  int currentIndex = 0;
  List screensList = [
    HomePage(),
    ProfileScreen(),
    SettingsScreen(),
    ContactScreen(),
    HelpScreen(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    Widget currentScreen = currentIndex == 0
        ? HomePage()
        : currentIndex == 1
            ? ProfileScreen()
            : currentIndex == 2
                ? SettingsScreen()
                : currentIndex == 3
                    ? ContactScreen()
                    : HelpScreen();

    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        selectedItemColor: Colors.purpleAccent,
        unselectedItemColor: Colors.blueGrey,
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: "Home", tooltip: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: "Profile", tooltip: "Profile"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
              tooltip: "Settings"),
          BottomNavigationBarItem(
              icon: Icon(Icons.emergency), label: "Contact", tooltip: "Contact"),
          BottomNavigationBarItem(
              icon: Icon(Icons.help), label: "Help", tooltip: "Help"),

        ],
      ),
    );
  }
}
