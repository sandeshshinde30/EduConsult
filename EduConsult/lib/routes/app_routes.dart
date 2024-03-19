import 'package:flutter/material.dart';
import '../presentation/splash_screen/splash_screen.dart';
import '../presentation/login_register_screen/login_register_screen.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/registration_screen/registration_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginRegisterScreen = '/login_register_screen';

  static const String loginScreen = '/login_screen';

  static const String registrationScreen = '/registration_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    loginRegisterScreen: (context) => LoginRegisterScreen(),
    loginScreen: (context) => LoginScreen(),
    registrationScreen: (context) => RegistrationScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}