import 'package:fampay/view/authentication/login/login_screen.dart';
import 'package:fampay/view/authentication/sign%20up/sign_up.dart';
import 'package:fampay/view/builder%20screen/home_page.dart';
import 'package:fampay/view/flashscreen.dart';
import 'package:fampay/view/no_internetsplash.cpp.dart';
import 'package:fampay/view/start%20screen/after_splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const splashRoute = '/SplashScreen';
  static const noInternetRoute = '/NoInternetScreen';
  static const loginRoute = '/LoginScreen';
  static const signupRoute = '/SignupScreen';
  static const aftersplashRoute = '/AfterSplashScreen';
  static const homeRoute = '/HomeScreenRoute';

  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashRoute:
        {
          return MaterialPageRoute(
            builder: (_) => const SplashScreen(),
            settings: settings,
          );
        }
      case homeRoute:
        {
          return MaterialPageRoute(
              builder: (_) => const HomePage(), settings: settings);
        }
      case aftersplashRoute:
        {
          return MaterialPageRoute(
            builder: (_) => const AfterSplashScreen(),
            settings: settings,
          );
        }

      case noInternetRoute:
        {
          return MaterialPageRoute(
            builder: (_) => const NoInternetScreen(),
            settings: settings,
          );
        }
      case loginRoute:
        {
          return MaterialPageRoute(
            builder: (_) => const LoginScreen(),
            settings: settings,
          );
        }
      case signupRoute:
        {
          return MaterialPageRoute(
            builder: (_) => const SignUpScreen(),
            settings: settings,
          );
        }
      default:
        {
          return MaterialPageRoute(
            builder: (_) => const LoginScreen(),
            settings: settings,
          );
        }
    }
  }
}
