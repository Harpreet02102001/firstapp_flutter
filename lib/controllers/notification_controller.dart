import 'dart:convert';

import 'package:firstapp/models/notification_model.dart';
import 'package:firstapp/network/api_endpoint.dart';
import 'package:firstapp/network/network_util.dart';
import 'package:firstapp/util/controller_getter.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../network/status_code_constant.dart';

class NotificationController extends GetxController {
  Rxn<NotificationModel> notification = Rxn<NotificationModel>();
  RxBool isLoading = false.obs;

  getNotification() async {
    // // api request and await for response
    final token = getLoginController.user.value!.token.accessToken;

    if (token == null || token.isEmpty) {
      print("get notification &  auth is failed : no auth Token");
      return;
    }
    isLoading.value = true;

    try {
      var response = await NetworkUtil.get(
        url: ApiEndpoint.instance.notificationApi,
        authToken: getLoginController.user.value!.token.accessToken,
      );

      if (response.statusCode ==
          StatusCodeConstant.instance.successStatusCode) {
        final responseData = jsonDecode(response.body);

        notification.value = NotificationModel.fromJson(responseData);
        // print("getNotification>>${notification.value?.data.length}");
      }
    } catch (e) {
      print("getActivityError : $e");
    } finally {
      isLoading.value = false;
    }
  }
}
