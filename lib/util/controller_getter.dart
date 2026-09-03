import 'package:firstapp/controllers/activity_controller.dart';
import 'package:firstapp/controllers/auth_controller.dart';
import 'package:firstapp/controllers/notification_controller.dart';
import '../controllers/transaction_controller.dart';
import 'package:get/get.dart';



AuthController get getAuthController =>
    Get.isRegistered<AuthController>()
        ? Get.find<AuthController>()
        : Get.put<AuthController>(AuthController());


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