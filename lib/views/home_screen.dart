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
            //   decoration: BoxDecoration(color: Colors.orange[100]),
            child: PageView.builder(
              onPageChanged: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              controller: PageController(viewportFraction: 0.9),
              itemCount: banners.length,
              itemBuilder: (context, index) {
                var bannerItem = banners[index];
                var _scale = selectedIndex == index ? 1.0 : 0.8;
                return TweenAnimationBuilder(
                  duration: Duration(microseconds: 350),
                  tween: Tween(begin: _scale, end: _scale),
                  curve: Curves.ease,
                  child: BannerItem(appbanners: bannerItem),
                  builder: (context, value, child) {
                    return Transform.scale(scale: value, child: child);
                  },
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                  banners.length,
                  (index) => Indicator(
                      isActive: selectedIndex == index ? true : false))
            ],
          )
        ],
      ),
    );
  }
}
