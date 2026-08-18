import 'dart:convert';
import 'package:firstapp/network/api_endpoint.dart';
import 'package:firstapp/network/network_util.dart';
import 'package:firstapp/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:firstapp/dashboard.dart';
import '../models/user_model.dart';

class LoginController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // User? user;
  Rxn<User> user = Rxn<User>();
  RxString errorMessage = "".obs;

  RxString emailError = "".obs;
  RxString passwordError = "".obs;

  get UserModel => null;
  get jsonData => null;

  //validate the user
  bool validateLoginFields() {
    emailError.value = "";
    passwordError.value = "";

    bool isValid = true;
    final email = emailController.text.trim();
    final password = passwordController.text.trim();

    if (email.isEmpty) {
      emailError.value = "Please enter your email address";
      isValid = false;
    } else if (!GetUtils.isEmail(email)) {
      emailError.value = "Please enter valid email address";
      isValid = false;
    }
    if (password.isEmpty) {
      passwordError.value = "Please enter valid password";
      isValid = false;
    }
    return isValid;
  }

  //login function and return the login response to login screen
  Future<void> userLogin() async {
    //LOCAL VALIDATION
    if (!validateLoginFields()) {
      return;
    }
    //API REQUEST
    var response = await NetworkUtil.post(
      url: ApiEndpoint.loginUrl,
      body: {
        "email": "${emailController.text}",
        "password": "${passwordController.text}",
      },
      authToken: "",
      headers: null,
    );

    //store the api response into variable responseData
    //SERVER RESPONSE
    final responseData = jsonDecode(response.body);

    if (response.statusCode == 200) {
      User user = User.fromJson(responseData['data']);
      // user.value = User.fromJson(responseData["data"]);

      // clear the previous error message
      errorMessage.value = "";

      Get.snackbar(
        "Success",
        "Login successful",
        snackPosition: SnackPosition.TOP,
        duration: const Duration(seconds: 3),

        // Position / spacing
        margin: const EdgeInsets.all(15),

        // Shape
        borderRadius: 15,

        // Background
        backgroundColor: Colors.green,

        // Text
        titleText: const Text(
          "Success",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),

        messageText: const Text(
          "Login successful",
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),

        // Icon
        icon: const Icon(Icons.check_circle, color: Colors.white, size: 30),

        // Prevent the snackbar from being too wide
        maxWidth: 400,
      );

      // print(user.value?.name);
      // print(user.value?.email);
      // print(user.value?.subscriptionStatus);
      print('User id : ${user.id}');
      print('User Name : ${user.name}');
      Get.off(() => Dashboard());
    } else {
      //handle the api error
      errorMessage.value = responseData["message"] ?? "Something went wrong";
    }
  }
}


