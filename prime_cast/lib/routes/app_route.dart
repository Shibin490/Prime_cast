import 'package:flutter/material.dart';
import 'package:prime_cast/views/forget_password.dart';
import 'package:prime_cast/views/signup_screen.dart';
import 'package:prime_cast/views/splash.dart';
import '../views/login_screen.dart';

class AppRoutes {
  static const String splash = '/';
  static const String signup = '/signup';
  static const String forgetPassword = '/forget-password';
  static const String login = '/login';

 static Map<String, WidgetBuilder> routes = {
  splash: (context) => SplashScreen(),
  signup: (context) => SignupScreen(),
  login: (context) => LoginScreen(),
  forgetPassword: (context) => ForgotPasswordPage(), // ✅ Add this
};

}
