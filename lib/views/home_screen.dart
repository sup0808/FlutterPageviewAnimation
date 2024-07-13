import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/AppBanner.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 16.0),
            height: 160,
            decoration: BoxDecoration(color: Colors.orange[100]),
            child: PageView.builder(
              itemCount: banners.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: NetworkImage(banners[index].thumbnail),
                          fit: BoxFit.cover)
                  ),

                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
