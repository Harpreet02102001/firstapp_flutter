import 'package:firstapp/screens/login_screen.dart';
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
}
