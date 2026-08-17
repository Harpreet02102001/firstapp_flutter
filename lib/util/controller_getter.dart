import 'package:firstapp/controllers/login_controller.dart';
import 'package:get/get.dart';

LoginController get getLoginController =>
    Get.isRegistered<LoginController>()
        ? Get.find<LoginController>()
        : Get.put<LoginController>(LoginController());




