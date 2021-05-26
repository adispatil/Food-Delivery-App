import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_delivery/constants/image_constants.dart';
import 'package:food_delivery/screens/landing_screen.dart';
import 'package:food_delivery/utils/AppHelper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);
  static const String id = 'splash_screen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer _timer;

  @override
  void initState() {
    _timer = Timer(Duration(seconds: 1), () {
      Navigator.of(context).pushReplacementNamed(LandingScreen.id);
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeight(context),
        child: Stack(
          children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                kSplashBackgroundImage,
                fit: BoxFit.fill,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(kMealMonkeyLogoImage),
            ),
          ],
        ),
      ),
    );
  }
}
