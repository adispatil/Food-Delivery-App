import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'constants/color_constants.dart';
import 'screens/forget_password_screen.dart';
import 'screens/intro_screens.dart';
import 'screens/new_password_screen.dart';
import 'screens/registration_screen.dart';
import 'screens/landing_screen.dart';
import 'screens/login_screen.dart';
import 'screens/send_otp.dart';
import 'screens/splash_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'Metropolis',
          primarySwatch: Colors.red,
          textTheme: TextTheme(
            headline3: TextStyle(
              color: AppColor.primary,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            headline4: TextStyle(
              color: AppColor.secondary,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            headline5: TextStyle(
              color: AppColor.primary,
              fontWeight: FontWeight.normal,
              fontSize: 25,
            ),
            headline6: TextStyle(
              color: AppColor.primary,
              fontSize: 25,
            ),
            bodyText2: TextStyle(color: AppColor.secondary, fontSize: 16),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(AppColor.orange),
              shape: MaterialStateProperty.all(StadiumBorder()),
            ),
          ),
        ),
        initialRoute: SplashScreen.id,
        routes: {
          //Authentication screen
          SplashScreen.id: (context) => SplashScreen(),
          LandingScreen.id: (context) => LandingScreen(),
          LoginScreen.id: (context) => LoginScreen(),
          RegistrationScreen.id: (context) => RegistrationScreen(),
          ForgetPasswordScreen.id: (context) => ForgetPasswordScreen(),
          SendOtp.id: (context) => SendOtp(),
          NewPasswordScreen.id: (context) => NewPasswordScreen(),
          IntroScreens.id: (context) => IntroScreens(),
        });
  }
}
