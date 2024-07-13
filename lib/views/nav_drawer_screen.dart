import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pageview_animation/views/bottom_navigation_screen.dart';

class DrawerDemo extends StatefulWidget {
  @override
  State<DrawerDemo> createState() => _DrawerDemoState();
}

class _DrawerDemoState extends State<DrawerDemo> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                accountName: Text("Supriya Gupta"),
                accountEmail: Text("supriyag75@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text(
                    "S",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              ListTile(
                leading:  Icon(Icons.home),
                title: Text("Home"),
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomNavigationScreen(selectedIndex : 0)));
                //  Navigator.pop(context);
                },
              ),
              ListTile(
                leading:  Icon(Icons.person),
                title: Text("Profile"),
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomNavigationScreen(selectedIndex : 1)));
              //    Navigator.pop(context);
                },
              ),
              ListTile(
                leading:  Icon(Icons.settings),
                title: Text("Settings"),
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomNavigationScreen(selectedIndex : 2)));
                  //Navigator.pop(context);
                },
              ),
              ListTile(
                leading:  Icon(Icons.contact_emergency),
                title: Text("Contact"),
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomNavigationScreen(selectedIndex : 3)));
                  //Navigator.pop(context);
                },
              ),
              ListTile(
                title:  Text("Help"),
                leading: Icon(Icons.help),
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomNavigationScreen(selectedIndex : 4)));
                 // Navigator.pop(context);
                },
              ),

            ],
          ),
    );

  }
}