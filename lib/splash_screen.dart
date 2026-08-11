import 'package:firstapp/login_screen.dart';
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
    Future.delayed(Duration(seconds: 3),() {
      Navigator.of(context).push(
        MaterialPageRoute<void>(
          builder: (context) => LoginScreen(),
        ),
      );
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: Center(
        child: Container(
          child: Image.asset("assets/images/logo.png", fit: BoxFit.cover,),
          decoration: BoxDecoration(
          ),
        ),
      ),
    );
  }
}
