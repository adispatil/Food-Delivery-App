import 'package:flutter/material.dart';
import '../constants/app_constants.dart';
import '../constants/styles.dart';
import '../screens/send_otp.dart';
import '../utils/AppHelper.dart';
import '../widgets/custom_text_field.dart';

class ForgetPasswordScreen extends StatefulWidget {
  static const String id = 'forget_password_screen';

  const ForgetPasswordScreen({Key key}) : super(key: key);

  @override
  _ForgetPasswordScreenState createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeight(context)*0.5,
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
            child: Column(
              children: <Widget>[
                Text(
                  kLabelResetPassword,
                  style: Helper.getTheme(context).headline6,
                ),
                Spacer(),
                Text(
                  kLabelForgetPasswordHeader2,
                  textAlign: TextAlign.center,
                ),
                Spacer(flex: 2,),
                CustomTextField(
                    hintText: kLabelYourEmailHint,
                    isPassword: false,
                    textInputAction: TextInputAction.done),
                Spacer(),
                SizedBox(
                  width: double.infinity,
                  height: 50.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed(SendOtp.id);
                    },
                    child: Text(
                      kLabelSubmit,
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
