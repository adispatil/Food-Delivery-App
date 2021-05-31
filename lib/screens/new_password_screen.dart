import 'package:flutter/material.dart';
import 'package:food_delivery/constants/styles.dart';
import 'package:food_delivery/screens/login_screen.dart';
import 'package:food_delivery/widgets/custom_text_field.dart';
import '../constants/app_constants.dart';
import '../utils/AppHelper.dart';

class NewPasswordScreen extends StatefulWidget {
  static const String id = 'new_password_screen';

  const NewPasswordScreen({Key key}) : super(key: key);

  @override
  _NewPasswordScreenState createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeight(context) * 0.5,
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
            child: Column(
              children: <Widget>[
                Text(
                  kLabelNewPassword,
                  style: Helper.getTheme(context).headline6,
                ),
                Spacer(),
                Text(
                  kLabelForgetPasswordHeader2,
                  textAlign: TextAlign.center,
                ),
                Spacer(
                  flex: 2,
                ),
                CustomTextField(
                    hintText: kLabelHintNewPassword,
                    isPassword: true,
                    textInputAction: TextInputAction.done),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                    hintText: kLabelHintConfirmPassword,
                    isPassword: true,
                    textInputAction: TextInputAction.done),
                Spacer(),
                SizedBox(
                  width: double.infinity,
                  height: 50.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed(LoginScreen.id);
                    },
                    child: Text(
                      kLabelButtonNext,
                      style: kButtonTextStyleWhite,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
