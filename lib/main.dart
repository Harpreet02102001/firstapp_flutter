import 'package:firstapp/register_screen.dart';
import 'package:firstapp/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'dashboard_card.dart';

void main() => runApp(
    GetMaterialApp(
      theme:  ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF283655),
          foregroundColor: Colors.white,   // title/icon color
          elevation: 0,
          // centerTitle: true,
        )
            
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    )
);
