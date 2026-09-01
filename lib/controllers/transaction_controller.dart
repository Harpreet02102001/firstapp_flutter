import 'dart:convert';

import 'package:firstapp/controllers/login_controller.dart';
import 'package:firstapp/models/transaction_model.dart' hide Datum;
import 'package:firstapp/models/user_model.dart';
import 'package:firstapp/network/api_endpoint.dart';
import 'package:firstapp/network/network_util.dart';
import 'package:firstapp/network/status_code_constant.dart';
import 'package:firstapp/util/controller_getter.dart';
import 'package:get/get.dart';
import '../models/transactionStatus_model.dart';

class TransactionController extends GetxController {
  //transactionModel Cards
  Rxn<TransactionModel> transaction = Rxn<TransactionModel>();

  RxList<Datum> tabs = <Datum>[].obs;

  //currently selected tab
  RxString selectedTabCode = ''.obs;

  //  loading states
  RxBool isLoading = false.obs;
  RxBool isTabLoading = false.obs;

  @override
  void onInit() {
    super.onInit();

    //Load tabs first
    getTransactionTabs();
  }

  // main dynamic tabs section start from here

  Future <void>
  getTransactionTabs() async {
    final token = getLoginController.user.value?.token.accessToken;

    if (token == null || token.isEmpty) {
      print("transation Tabs Failed : auth Token not found ");
      return;
    }

    isTabLoading.value = true;

    try {
      var response = await NetworkUtil.get(
        url: ApiEndpoint.instance.transactionStatus,
        authToken: token,
      );

      if (response.statusCode ==
          StatusCodeConstant.instance.successStatusCode) {
        final responseData = jsonDecode(response.body);

        final List data = responseData['data'] ?? [];

        //parse API response completely
        final statusResponse = TransactionStatusModel.fromJson(responseData);
        // store the every indiviual tabs
        tabs.value = statusResponse.data;
        // tabs.value = data
        //     .map(
        //         (item) => TransactionStatusModel.fromJson(item)
        // ).toList();

        //select first tab by default -> means which defauly tab is selected by
        // default and than ,In that case following will work
        if(tabs.isNotEmpty){
          selectedTabCode.value = tabs.first.code;


          print(
            "Default selected tab: "
                "${tabs.first.name} "
                "(${tabs.first.code})",
          );


          //Load cards for first tab
          getTransaction();
         }
      }
    } catch (e, t) {
      print("TransactionTabs  error: $e");
      print(t);
    }finally{
      isTabLoading.value = false;
    }
  }

  //------------------------------------------tab change---------------------------------------

  changeTab(int index){
    if(index < 0  || index >= tabs.length){
      return;
    }

    selectedTabCode.value = tabs[index].code;
    
    print(
      "Selected tabs : ${tabs[index].name}"
          "(${tabs[index].code})",
    );
      //get the transaction cards for  selected status
      getTransaction();

  }


  // ---------------------------------transaction cards logic start from here -------------------------------------

  //get transaction status Tabs
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
      if (response.statusCode ==
          StatusCodeConstant.instance.successStatusCode) {
        final responseData = jsonDecode(response.body);

        transaction.value = TransactionModel.fromJson(responseData);
        print(transaction.value!.data.first.title);
        // print(responseData);
      }
    } catch (e, t) {
      print("catch condition is  working now and something went wrong");
    } finally {
      isLoading.value = false;
    }
  }
}
