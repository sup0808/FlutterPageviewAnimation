import 'package:flutter/material.dart';
import 'package:flutter_pageview_animation/views/bottom_navigation_screen.dart';
import 'package:flutter_pageview_animation/views/home_screen.dart';
import 'package:flutter_pageview_animation/views/nav_drawer_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Drawer",
      home: BottomNavigationScreen(selectedIndex: 0,),
     
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
        title: const Text("Drawer Demo "),
      ),
      drawer: DrawerDemo(),
      body: HomeScreen(),
    );
  }
}
