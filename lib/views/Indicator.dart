import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Indicator extends StatelessWidget{

  final bool isActive;

  Indicator({required this.isActive});

  @override
  Widget build(BuildContext context) {

   return AnimatedContainer(
     duration: Duration(microseconds: 350),
     width: isActive ? 22: 8,
     height: 8,
     margin: EdgeInsets.symmetric(horizontal: 8),
     decoration: BoxDecoration(
         color: isActive ? Colors.orange :    Colors.grey,
         borderRadius: BorderRadius.circular(8)
     ),
   );
  }

}