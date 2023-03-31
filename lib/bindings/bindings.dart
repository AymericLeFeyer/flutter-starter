import 'package:get/instance_manager.dart';
import 'package:starter/api/example.api.dart';
import 'package:starter/bindings/instances.dart';
import 'package:starter/services/example.service.dart';

class MyBindings implements Bindings {
  // Api
  final ExampleApi exampleApi = ExampleApi();

  @override
  void dependencies() {
    Instances.initFirebase();
    Instances.initStorage();

    Get.lazyPut<ExampleService>(() => ExampleService(exampleApi: exampleApi), fenix: true);
  }
}
