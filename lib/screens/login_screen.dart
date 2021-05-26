import 'package:flutter/material.dart';
import 'package:food_delivery/constants/app_constants.dart';
import 'package:food_delivery/constants/color_constants.dart';
import 'package:food_delivery/constants/image_constants.dart';
import 'package:food_delivery/constants/styles.dart';
import 'package:food_delivery/screens/registration_screen.dart';
import 'package:food_delivery/utils/AppHelper.dart';
import 'package:food_delivery/widgets/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeight(context),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 30,
            ),
            child: Column(
              children: <Widget>[
                Text(
                  kButtonLogin,
                  style: Helper.getTheme(context).headline6,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(kLabelLoginHeader2),
                Spacer(),
                CustomTextField(
                  hintText: kLabelYourEmailHint,
                  isPassword: false,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  hintText: 'Your Password',
                  isPassword: true,
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50.0,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      kButtonLogin,
                      style: kButtonTextStyleWhite,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(kLabelForgotPassword),
                ),
                Spacer(flex: 2,),
                Text(kLabelOrLoginWith),
                Spacer(),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(AppColor.facebookBg)),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(kFacebookLogoImage),
                        SizedBox(width: 20),
                        Text(
                          kLabelLoginWithFacebook,
                          style: kButtonTextStyleWhite,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(AppColor.googleBg),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(kGoogleLogoImage),
                        SizedBox(width: 20),
                        Text(
                          kLabelLoginWithGoogle,
                          style: kButtonTextStyleWhite,
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(
                  flex: 4,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed(RegistrationScreen.id);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(kLabelDoNotHaveAccount),
                      Text(
                        kLabelSignUp,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColor.orange),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
