import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pageview_animation/views/banner_item.dart';

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
              controller: PageController(viewportFraction: 0.9),
              itemCount: banners.length,
              itemBuilder: (context, index) {
                return BannerItem(appbanners :banners[index]);
              },
            ),
          ),
          Row(
            children: [],
          )
        ],
      ),
    );
  }
}


