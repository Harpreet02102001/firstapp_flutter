import 'dart:convert';
import 'package:firstapp/controllers/login_controller.dart';
import 'package:firstapp/models/activity_model.dart';
import 'package:firstapp/network/api_endpoint.dart';
import 'package:firstapp/network/network_util.dart';
import 'package:firstapp/network/status_code_constant.dart';
import 'package:firstapp/util/controller_getter.dart';
import 'package:get/get.dart';

class ActivityController extends GetxController {
  Rxn<ActivityModel> activity = Rxn<ActivityModel>();
  getActivity() async {
    //api request and wait for response
    var response  = await NetworkUtil.get(
        url: ApiEndpoint.instance.ActivityApi,
        authToken: getLoginController.user.value!.token.accessToken,
    );
    // check status code before procedding

    if(response.statusCode == StatusCodeConstant.instance.successStatusCode){
      final responseData = jsonDecode(response.body);

      activity.value = ActivityModel.fromJson(responseData);
      // print("getActivity>>${activity.value?.data.length}");
    }

  }
}