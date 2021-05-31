import 'package:flutter/material.dart';
import 'package:food_delivery/utils/AppHelper.dart';

class IntroScreens extends StatelessWidget {
  static const String id = 'intro_screens';

  // const IntroScreens({Key key}) : super(key: key);

  final List<Map<String, String>> _pages = [
    {
      'image': 'vector1.png',
      'title': 'Find Food You Love',
      'desc': 'Discover the best foods from over the 1,000 restaurants and fast delivery to your doorstep'
    },
    const{
      "image": 'vector2.png',
      'title': 'Fast Delivery',
      'desc': 'Fast food delivery to your home, office wherever you are'
    },
    {
      'image': 'vector3.png',
      'title': 'Live Tracking',
      'desc': 'Real time tracking of your food on the app once you placed the order'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Container(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeight(context),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
          ),
        ),
      ),
    );
  }
}