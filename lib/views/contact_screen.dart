import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'nav_drawer_screen.dart';

class ContactScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     appBar: AppBar(
       title: const Text("Contact"),
       backgroundColor: Colors.purpleAccent,
     ),
     drawer: DrawerDemo(),
     body: Container(
         alignment : Alignment.center,
         child: Text("Contact Screen")),
   );
  }

}