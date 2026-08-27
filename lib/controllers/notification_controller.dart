import 'dart:convert';

import 'package:firstapp/models/notification_model.dart';
import 'package:firstapp/network/api_endpoint.dart';
import 'package:firstapp/network/network_util.dart';
import 'package:firstapp/util/controller_getter.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../network/status_code_constant.dart';
import '../util/notification_action_util.dart';

class NotificationController extends GetxController {
  Rxn<NotificationModel> notification = Rxn<NotificationModel>();
  // Rxn means Reactive + nullable.
  // Reactive → GetX can detect when the value changes.
  // Nullable → the value can be null.

  RxBool isLoading = false.obs;

  getNotification() async {
    // // api request and await for response
    final token = getLoginController.user.value!.token.accessToken;

    if (token == null || token.isEmpty) {
      // not logged in / session out/ lost, don't force- unwrap null, just bail
      print("get notification &  auth is failed : no auth Token");
      return;
    }
    isLoading.value = true;

    try {
      //request with api ans wait for response
      var response = await NetworkUtil.get(
        url: ApiEndpoint.instance.notificationApi,
        authToken: token,
      );
      //check for response code and than proceed

      //print the response after that proceed
      if (response.statusCode ==
          StatusCodeConstant.instance.successStatusCode) {
        final responseData = jsonDecode(response.body);

        notification.value = NotificationModel.fromJson(responseData);

        // create a notificationActionList variable and store list in variable
        var notificationActionList = NotificationActionUtil.list;

        print(notificationActionList.first.message);

        for (int i = 0; i < notification.value!.data.length; i++) {
          var item = notification.value!.data[i];
          var result = notificationActionList.firstWhereOrNull(
            (element) => element.action == item.action,
          );
          if (result != null) {
            item.message = result.message;
          }
        }
      }
    } catch (e, t) {
      print("getActivity Error : $e , $t");
    } finally {
      isLoading.value = false;
    }
  }
}
