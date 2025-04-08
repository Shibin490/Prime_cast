import 'package:flutter/material.dart';
import 'package:prime_cast/routes/app_route.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, AppRoutes.login);
    });

    return Scaffold(
      body: Center(
        child: Text(
          'PrimeCast Splash',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
