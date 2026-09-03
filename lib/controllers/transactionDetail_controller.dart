import 'package:firstapp/models/transactionDetail_model.dart';
import 'package:firstapp/network/api_endpoint.dart';
import 'package:firstapp/network/network_util.dart';
import 'package:firstapp/util/app_data.dart';
import 'package:firstapp/util/controller_getter.dart';
import 'package:get/get.dart';

class getTransactionDetailsController extends GetxController {
  //transaction Model screen with Model
  Rxn<TransactionDetailModel> transactionDetail = Rxn<TransactionDetailModel>();
RxBool isLoading = false.obs;

Future<void>
  getTransactionDetails() async {

    isLoading.value = true;


    try{
      var response = await NetworkUtil.get(
          url: ApiEndpoint.instance.transactionStatus,
          authToken: AppData.authToken,
      );



    }
    catch(e ,t){
      print("$e , ");
      print("$t");
    }finally{
    isLoading.value = false;

    }







  }
}
