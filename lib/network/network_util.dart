import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkUtil {
  static get({required String url, required String authToken}) async {
    Map<String, String> header = {
      "Content-Type": "application/json",
      "Accept": "application-json",
    };

    var uri = Uri.parse(url);
    var response = await http.get(uri, headers: header);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
  }

  //following is post method and above is get method need to understand deeply
  static post({
    required String url,
    required Map<String, dynamic> body,
    required String authToken,
    required dynamic headers,
  }) async {
    Map<String, String> header = {
      "Content-Type": "application/json",
      "Accept": "application/json",
    };
    if (authToken != null && authToken.isNotEmpty) {
      headers["Authorization"] = "Bearer $authToken";
    }
    print('please wait for while ');

    var uri = Uri.parse(url);
    // final urllll = Uri.parse('https://api-dev.clientvendor.com/api/v1/login');
    var response = await http.post(
      uri,
      headers: header,
      body: jsonEncode(body),
    );
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    return response;
  }

  //  delete request structure

  static delete({
    required String url,
    required Map<String, dynamic> body,
    required String authToken,
  }) async {
    Map<String, String> header = {
      "Content-Type": "application/json",
      "Accept": "application/json",
      "Authorization": "Bearer @authToken",
    };
    print("delete function in process");

    var uri = Uri.parse(url);
    var response = await http.delete(
      uri,
      headers: header,
      body: jsonEncode(body),
    );

    return response;
  }
}
