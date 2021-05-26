import 'package:flutter/material.dart';
import 'package:food_delivery/constants/app_utils.dart';
import 'package:food_delivery/constants/image_constants.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key key}) : super(key: key);
  static const String id = 'splash_screen';

  ///save screen dimensions to app utils
  void getScreenDimensions(double height, double width) {
    AppUtils.kAppHeight = height;
    AppUtils.kAppWidth = width;
  }

  @override
  Widget build(BuildContext context) {
    getScreenDimensions(
        MediaQuery.of(context).size.width, MediaQuery.of(context).size.height);
    return Scaffold(
      body: Container(
        width: AppUtils.kAppWidth,
        height: AppUtils.kAppHeight,
        child: Stack(
          children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                kSplashBackgroundImage,
                fit: BoxFit.fill,
              ),
            )
          ],
        ),
      ),
    );
  }
}
