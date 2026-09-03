import 'package:firstapp/dashboard.dart';
import 'package:firstapp/screens/login_screen.dart';
import 'package:firstapp/util/shared_pref/shared_keys.dart';
import 'package:firstapp/util/shared_pref/shared_preference_util.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    testLocalDb();


    Future.delayed(Duration(seconds: 3),() async {

        final  String? token = await SharedPreferenceUtil.getLocalString(key: SharedKeys().authTokenKey);

      Navigator.of(context).push(
        MaterialPageRoute<void>(
          builder: (context) => token==null?LoginScreen():Dashboard(),
        ),
      );
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF283655),
              Color(0xFF53699A),
              Color(0xFF3F61AB),
            ],
            stops: [0.0, 1.0, 1.0],
          ),
        ),
        child: Center(
          child: Image.asset(
            "assets/images/Group.png",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );

  }

  Future<void> testLocalDb() async {
   // await SharedPreferenceUtil.setLocalString(key: SharedKeys().loginResponseKey, value: "password");
   //   final  String? storedData = await SharedPreferenceUtil.getLocalString(key: SharedKeys().loginResponseKey);
   //  print("localStorage:--  $storedData");
   //
   //   SharedPreferenceUtil.clearLocalStorage();
   //
   //   final  String? storedDa = await SharedPreferenceUtil.getLocalString(key: SharedKeys().loginResponseKey);
   //   print("localStorage:--  $storedDa");


      // final  String? storedDa = await SharedPreferenceUtil.getLocalString(key: SharedKeys().loginResponseKey);
  }

}
