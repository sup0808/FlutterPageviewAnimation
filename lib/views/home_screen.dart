import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pageview_animation/views/Indicator.dart';
import 'package:flutter_pageview_animation/views/banner_item.dart';

import '../model/AppBanner.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var selectedIndex = 0;

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
              onPageChanged: (index){
                setState(() {
                  selectedIndex = index;
                });
              },
              controller: PageController(viewportFraction: 0.9),
              itemCount: banners.length,
              itemBuilder: (context, index) {
                return BannerItem(appbanners: banners[index]);
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(banners.length,
                  (index) => Indicator(isActive : selectedIndex == index ? true : false))
            ],
          )
        ],
      ),
    );
  }
}
