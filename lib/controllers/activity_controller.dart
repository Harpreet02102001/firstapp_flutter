import 'dart:convert';
import 'package:firstapp/models/activity_model.dart';
import 'package:firstapp/network/api_endpoint.dart';
import 'package:firstapp/network/network_util.dart';
import 'package:firstapp/network/status_code_constant.dart';
import 'package:firstapp/util/controller_getter.dart';
import 'package:get/get.dart';
import '../util/activity_action_util.dart';

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

      // check status code before proceed
      if (response.statusCode ==
          StatusCodeConstant.instance.successStatusCode) {
        final responseData = jsonDecode(response.body);

        // print(responseData);

        activity.value = ActivityModel.fromJson(responseData);
        final activityList = ActivityActionUtil.list;

        // print(activityList.length);
        // for (var item in activityList) {
        //  print(item.action);
        // }

        for (int i = 0; i < activity.value!.data.length; i++) {
          var item = activity.value!.data[i];
          var result = activityList.firstWhereOrNull(
            (element) => element.action == item.action,
          );
          // print(item.message.length);


          // print(result);
          if (result != null) {
            item.message = result.message;
          }else{
            item.message = item.action;
          }
        } // for loop
      } // if success
    } catch (e, t) {
      print("getActivity Error : $e , $t");
    } finally {
      isLoading.value = false;
    }
  } // getActivity
}
