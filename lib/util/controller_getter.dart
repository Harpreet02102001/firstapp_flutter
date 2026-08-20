import 'package:firstapp/controllers/login_controller.dart';
import 'package:firstapp/controllers/notification_controller.dart';
import 'package:get/get.dart';

LoginController get getLoginController =>
    Get.isRegistered<LoginController>()
        ? Get.find<LoginController>()
        : Get.put<LoginController>(LoginController());


NotificationController get getNotificationController =>
    Get.isRegistered<NotificationController>()
        ? Get.find<NotificationController>()
        : Get.put<NotificationController>(NotificationController());


