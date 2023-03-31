import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:starter/api/example.api.dart';

class ExampleService extends GetxService {
  final ExampleApi exampleApi;

  ExampleService({required this.exampleApi});

  Future<void> getExample() async {
    await exampleApi.getExample();
  }
}