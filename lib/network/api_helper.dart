import 'dart:convert';
import 'package:http/http.dart' as http;

const STAGING_URL = "http://172.20.10.10:8080/api/";

class ApiBaseHelper {

  final String _baseUrl = STAGING_URL;

  Future<dynamic> get(String subUrl, {String? accessToken}) async {
    var responseJson;
    try {
      print("sending get request $_baseUrl$subUrl}");
      var headers = <String, String>{};
      if (accessToken != null) {
        headers["Authorization"] = "Bearer $accessToken";
      }
      print("GET request sent with token: Bearer $accessToken");
      final response = await http.get(Uri.parse(_baseUrl + subUrl), headers: headers);
      print("GET request response is ${response.body}");
      responseJson = _returnResponse(response);
    } catch (e) {
      print("exc $e");
      throw Exception(
          'Error occurred while Communication with Server with StatusCode');
    }
    return responseJson;
  }

  Future<dynamic> post(String subUrl, body, [accessToken]) async {
    var responseJson;
    try {
      print("requesting post with token $accessToken");
      var headers = <String, String>{};
      if (accessToken != null && accessToken.toString().isNotEmpty)
        body["auth_code"] = accessToken;

      final response =
          await http.post(Uri.parse(_baseUrl + subUrl), body: body, headers: headers);
      print("response ${response.statusCode}");
      print("response ${response.body}");

      responseJson = _returnResponse(response);
    } catch (e) {
      print("exc $e");
      throw Exception(
          'Error occured while Communication with Server with StatusCode');
    }
    return responseJson;
  }

  dynamic _returnResponse(http.Response response) {
    print("response status is ${response.statusCode}");
    switch (response.statusCode) {
      case 200:
      case 201:
        var responseJson = json.decode(response.body.toString());
        print(responseJson);
        return responseJson;
      case 500:
      default:
        throw Exception(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}
