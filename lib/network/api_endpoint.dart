class ApiEndpoint {
  ApiEndpoint._();

  static final ApiEndpoint instance = ApiEndpoint._();

  String baseUrl = "https://api-dev.clientvendor.com/api/v1";

  late String loginUrl = "${baseUrl}/login";
  late String registerUrl = "${baseUrl}/register";
  late String authApi = "${baseUrl}/auth/login";
  late String notificationApi = "${baseUrl}/users/notifications";
  late String activityApi = "${baseUrl}/users/activities";
  late String transactionApi = "${baseUrl}/transactions";
  late String transactionStatus = "${baseUrl}/master-services/transaction_status/";
}
