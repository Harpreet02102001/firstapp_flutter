import 'dart:convert';
import 'package:firstapp/controllers/login_controller.dart';
import 'package:firstapp/models/activity_model.dart';
import 'package:firstapp/models/user_model.dart';
import 'package:firstapp/network/api_endpoint.dart';
import 'package:firstapp/network/network_util.dart';
import 'package:firstapp/network/status_code_constant.dart';
import 'package:firstapp/util/controller_getter.dart';
import 'package:get/get.dart';

class ActivityController extends GetxController {
  Rxn<ActivityModel> activity = Rxn<ActivityModel>();
  RxBool isLoading = false.obs;

  getActivity() async {
    //variable for token
    final token = getLoginController.user.value!.token.accessToken;

    if (token == null || token.isEmpty) {
      // not logged in / session out/ lost, don't force- unwrap null, just bail
      print("get activity failed : no auth token");
      return;
    }
    isLoading.value = true;

    try {
      //api request and wait for response
      var response = await NetworkUtil.get(
        url: ApiEndpoint.instance.activityApi,
        authToken: token,
      );
      // print("ACTIVITY STATUS CODE: ${response.statusCode}");
      // print("ACTIVITY BODY: ${response.body}");

      // check status code before proceed
      if (response.statusCode ==
          StatusCodeConstant.instance.successStatusCode) {
        final responseData = jsonDecode(response.body);
        activity.value = ActivityModel.fromJson(responseData);
        // print("getActivity>>${activity.value?.data.length}");
      } else {
        print(
          "getActivity failed : status ${response.statusCode},body ${response.body} ",
        );
      }
    } catch (e) {
      print("getActivity error : $e");
    } finally {
      isLoading.value = false;
    }
  }
}
