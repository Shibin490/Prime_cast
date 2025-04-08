import 'package:flutter/material.dart';
import 'package:prime_cast/views/splash.dart';
import '../views/login_screen.dart';

class AppRoutes {
  static const String splash = '/';
  static const String login = '/login';

  static Map<String, WidgetBuilder> routes = {
    splash: (context) => SplashScreen(),
    login: (context) => LoginScreen(),
  };
}
