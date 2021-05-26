import 'package:clip_shadow/clip_shadow.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/constants/app_constants.dart';
import 'package:food_delivery/constants/color_constants.dart';
import 'package:food_delivery/constants/image_constants.dart';
import 'package:food_delivery/constants/styles.dart';
import 'package:food_delivery/screens/login_screen.dart';
import 'package:food_delivery/screens/registration_screen.dart';
import 'package:food_delivery/utils/AppHelper.dart';
import 'package:food_delivery/utils/custom_clipper.dart';

class LandingScreen extends StatelessWidget {
  static const String id = 'landing_screen';

  const LandingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeight(context),
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: ClipShadow(
                clipper: CustomClipperAppBar(),
                boxShadow: [
                  BoxShadow(
                    color: AppColor.placeholder,
                    offset: Offset(0, 15),
                    blurRadius: 10,
                  )
                ],
                child: Container(
                  width: double.infinity,
                  height: Helper.getScreenHeight(context) * 0.5,
                  decoration: ShapeDecoration(
                    color: AppColor.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Image.asset(
                    kLoginBackgroundImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(kMealMonkeyLogoImage),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: Helper.getScreenHeight(context) * 0.3,
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: <Widget>[
                    Flexible(
                      child: Text(
                        kLabelLandingScreenDescription,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50.0,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed(LoginScreen.id);
                        },
                        child: Text(
                          'LOGIN',
                          style: kButtonTextStyleWhite,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50.0,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            foregroundColor:
                                MaterialStateProperty.all(AppColor.orange),
                            shape: MaterialStateProperty.all(
                              StadiumBorder(
                                side: BorderSide(
                                    color: AppColor.orange, width: 1.5),
                              ),
                            ),
                            elevation: MaterialStateProperty.all(0.0)),
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed(RegistrationScreen.id);
                        },
                        child: Text(
                          'CREATE AN ACCOUNT',
                          style: kButtonTextStyleWhite,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
