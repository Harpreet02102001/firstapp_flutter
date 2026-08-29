import 'dart:convert';

import 'package:firstapp/models/transaction_model.dart';
import 'package:firstapp/network/api_endpoint.dart';
import 'package:firstapp/network/network_util.dart';
import 'package:firstapp/network/status_code_constant.dart';
import 'package:firstapp/util/controller_getter.dart';
import 'package:get/get.dart';

class TransactionController extends GetxController {
  Rxn<TransactionModel> transaction = Rxn<TransactionModel>();
  RxBool isLoading = false.obs;

  getTransaction() async {
    final token = getLoginController.user.value!.token.accessToken;

    if (token == null || token.isEmpty) {
      print("transaction failed : no auth token");
      return;
    }
    isLoading.value = true;

    try {
      var response = await NetworkUtil.get(
        url: ApiEndpoint.instance.transactionApi,
        authToken: token,
      );

      //check the responseCode from the api and than proceed
      if (response.statusCode == StatusCodeConstant.instance.successStatusCode){
        final responseData = jsonDecode(response.body);

        transaction.value = TransactionModel.fromJson(responseData);
        print(transaction.value!.data.first.title);
        // print(responseData);
      }
    } catch (e, t) {
      print("catch condition is working now");
    }
    finally{
      isLoading.value = false;
    }
  }
}
