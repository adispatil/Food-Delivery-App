import 'package:flutter/material.dart';
import 'package:food_delivery/constants/color_constants.dart';
import 'package:food_delivery/constants/image_constants.dart';
import 'package:food_delivery/constants/styles.dart';
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
                  'Login',
                  style: Helper.getTheme(context).headline6,
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Add your details to login'),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  hintText: 'Your Email',
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
                GestureDetector(
                  onTap: () {},
                  child: Text('Forgot your password?'),
                ),
                SizedBox(
                  height: 80,
                ),
                Text('Or login with'),
                SizedBox(
                  height: 50,
                ),
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
                          'Login with Facebook',
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
                          'Login with Google',
                          style: kButtonTextStyleWhite,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Don\'t have an account? '),
                      Text(
                        'Sign Up',
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
