import 'package:http/http.dart' as http;

abstract class BaseApi {
  String resource = "";
}

class HttpClient {
  static String baseUrl = "...";
  static String localUrl = "...";

  static bool useLocal = false;
  static String webApi = "/webApi";

  static headers() async {
    return {
      'Content-Type': 'application/x-www-form-urlencoded',
    };
  }

  static get({url, params}) async {
    return http.get(
        useLocal ? Uri.parse("$localUrl/$url") : Uri.https(baseUrl, "$webApi/$url", params),
        headers: await headers());
  }

  static post({url, params, body}) async {
    return http.post(
        useLocal ? Uri.parse("$localUrl/$url") : Uri.https(baseUrl, "$webApi/$url", params),
        headers: await headers(),
        body: body);
  }

  static put({url, params, body}) async {
    return http.put(
        useLocal ? Uri.parse("$localUrl/$url") : Uri.https(baseUrl, "$webApi/$url", params),
        headers: await headers(),
        body: body);
  }
}
