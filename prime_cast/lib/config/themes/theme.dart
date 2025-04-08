import 'package:flutter/material.dart';

final ThemeData primeCastTheme = ThemeData(
  primarySwatch: Colors.red,
  scaffoldBackgroundColor: Colors.white,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  textTheme: TextTheme(
    titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
    bodyMedium: TextStyle(fontSize: 16, color: Colors.black),
  ),
);
