import 'package:http/http.dart';

class RequestAPI {
  static final RequestAPI _instance = RequestAPI._internal();

  factory RequestAPI() {
    return _instance;
  }

  RequestAPI._internal() {}

  Future<String?> requestPost(String url, String json_body) async {
    Map<String, String> headers = {"Content-type": "application/json"};
    Response response =
        await post(Uri.parse(url), headers: headers, body: json_body);
    int statusCode = response.statusCode;
    String body = response.body;
    return body;
  }
}
