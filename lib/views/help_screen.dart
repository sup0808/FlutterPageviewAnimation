import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'nav_drawer_screen.dart';

class HelpScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   
   return Scaffold(
     appBar: AppBar(
       title: const Text("Help"),
       backgroundColor: Colors.purpleAccent,
     ),
     drawer: DrawerDemo(),
     body: Container(
         alignment : Alignment.center,
         child: Text("Help Screen")),
   );
  }

}