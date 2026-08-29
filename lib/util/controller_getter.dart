import 'package:firstapp/controllers/activity_controller.dart';
import 'package:firstapp/controllers/login_controller.dart';
import 'package:firstapp/controllers/notification_controller.dart';
import '../controllers/transaction_controller.dart';
import 'package:get/get.dart';



LoginController get getLoginController =>
    Get.isRegistered<LoginController>()
        ? Get.find<LoginController>()
        : Get.put<LoginController>(LoginController());


NotificationController get getNotificationController =>
    Get.isRegistered<NotificationController>()
        ? Get.find<NotificationController>()
        : Get.put<NotificationController>(NotificationController());



ActivityController get getActivityController =>
    Get.isRegistered<ActivityController>()
        ? Get.find<ActivityController>()
        : Get.put<ActivityController>(ActivityController());


TransactionController get getTransactionController =>
    Get.isRegistered<TransactionController>()
        ? Get.find<TransactionController>()
        : Get.put<TransactionController>(TransactionController());