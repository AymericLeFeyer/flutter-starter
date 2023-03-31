import 'package:starter/api/client.dart';
import 'package:http/http.dart' as http;

class ExampleApi implements BaseApi {
  @override
  String resource = "courses";

  Future<http.Response> getExample() async {
    return await HttpClient.get(url: '$resource/example');
  }
}
