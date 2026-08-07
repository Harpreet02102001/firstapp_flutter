import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text('Register Screen'),
        actions: [Icon(Icons.person),],
      ),

    );
  }
}
