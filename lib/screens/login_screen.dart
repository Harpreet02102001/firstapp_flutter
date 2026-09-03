import 'package:firstapp/dashboard.dart';
import 'package:firstapp/register_screen.dart';
import 'package:firstapp/util/controller_getter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
          child: ListView(
            // mainAxisAlignment: MainAxisAlignmeSinglent.center,
            children: [
              Image.asset('assets/images/c2vlogo.png', fit: BoxFit.contain),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome Back',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Nice to see you again',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),

              Obx(() {
                return TextFormField(
                  controller: getAuthController.emailController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: "Enter Your Email",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    errorText: getAuthController.emailError.value.isEmpty
                        ? null
                        : getAuthController.emailError.value,
                  ),
                );
              }),

              const SizedBox(height: 15),
              Obx(() {
                return TextField(
                  controller: getAuthController.passwordController,
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                    labelText: "Password",
                    errorText: getAuthController.passwordError.value.isEmpty
                        ? null
                        : getAuthController.passwordError.value,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                );
              }),
              Obx(() {
                if (getAuthController.errorMessage.value.isEmpty) {
                  return const SizedBox();
                }

                return Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Text(
                    getAuthController.errorMessage.value,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.red,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                );
              }),
              // obx ends here
              SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Forgot your password?',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF563BA6),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              InkWell(
                onTap: () {
                  var userLogin = getAuthController.userLogin();
                },
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,

                      end: Alignment.bottomRight,
                      colors: const [
                        Color(0xFF283655),
                        Color(0xFF53699A),
                        Color(0xFF3F61AB),
                      ],
                      stops: const [0.0, 1.0, 1.0],
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'LOGIN',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize:14,color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              // Obx(() {
              //   final user = getLoginController.user.value;
              //
              //   if (user == null) {
              //     return const SizedBox();
              //   }
              //
              //   return Column(
              //     children: [
              //       const SizedBox(height: 30),
              //       Text("Name: ${user.name}"),
              //       Text("Email: ${user.email}"),
              //       Text("Status: ${user.status}"),
              //     ],
              //   );
              // }),
              SizedBox(height: 120),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account yet? ',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => RegisterScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Color(0xFF563BA6),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
