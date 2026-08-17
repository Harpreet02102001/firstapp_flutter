import 'package:firstapp/register_screen.dart';
import 'package:firstapp/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'dashboard_card.dart';

void main() => runApp(
    GetMaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    )
);
