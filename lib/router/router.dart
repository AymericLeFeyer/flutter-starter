import 'package:get/route_manager.dart';
import 'package:starter/ui/pages/example.page.dart';

class MyRouter {
  static var route = [
    GetPage(name: '/example', page: () => ExamplePage()),
  ];
}
