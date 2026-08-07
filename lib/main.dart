import 'package:firstapp/register_screen.dart';
import 'package:firstapp/splash_screen.dart';
import 'package:flutter/material.dart';
import 'dashboard_card.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      // home: RegisterScreen(),
    ),
  );
}

