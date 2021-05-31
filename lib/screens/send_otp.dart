import 'package:flutter/material.dart';
import 'package:food_delivery/screens/new_password_screen.dart';
import '../constants/color_constants.dart';
import '../constants/styles.dart';
import '../constants/app_constants.dart';
import '../utils/AppHelper.dart';
import '../widgets/otp_input.dart';

class SendOtp extends StatelessWidget {
  static const String id = 'send_otp';

  const SendOtp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: Helper.getScreenWidth(context),
          height: Helper.getScreenHeight(context) * 0.5,
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
          child: Column(
            children: <Widget>[
              Text(
                kLabelOtpSent,
                style: Helper.getTheme(context).headline6,
                textAlign: TextAlign.center,
              ),
              Spacer(),
              Text(kLabelPleaseCheckMobile),
              Spacer(
                flex: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  OtpInput(first: true, last: false),
                  OtpInput(first: false, last: false),
                  OtpInput(first: false, last: false),
                  OtpInput(first: false, last: true),
                ],
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
                        .pushReplacementNamed(NewPasswordScreen.id);
                  },
                  child: Text(
                    kLabelSubmit,
                    style: kButtonTextStyleWhite,
                  ),
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(kLabelDoNotReceivedOtp),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      kLabelResend,
                      style: kButtonTextStyleWhite.copyWith(
                          color: AppColor.orange),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
