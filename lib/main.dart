import 'package:firstapp/splash_screen.dart';
import 'package:firstapp/util/shared_pref/shared_preference_util.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  SharedPreferenceUtil.initLocalStorage();

  runApp(
      GetMaterialApp(
        theme: ThemeData(
            appBarTheme: const AppBarTheme(
              backgroundColor: Color(0xFF283655),
              foregroundColor: Colors.white, // title/icon color
              elevation: 0,
              // centerTitle: true,
            )

        ),
        home: SplashScreen(),
        debugShowCheckedModeBanner: false,
      )
  );
}