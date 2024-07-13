import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../model/AppBanner.dart';
class BannerItem extends StatelessWidget{

  final AppBanner appbanners;

  const BannerItem({super.key, required this.appbanners});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: NetworkImage(appbanners.thumbnail),
              fit: BoxFit.cover)
      ),
      child: DefaultTextStyle(
        style: TextStyle(color: Colors.white,fontSize: 20),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(0, 0, 0, 0.3)
              ),

            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Title'.toUpperCase()),
                  Container(
                    width: 200,
                    child: Text(
                      appbanners.title.toUpperCase(),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}