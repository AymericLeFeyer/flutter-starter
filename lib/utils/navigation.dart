import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class NavigationService {
  static goTo({Widget? page, String? route, bool off = false}) {
    if (page != null) {
      if (off) {
        Get.off(() => page);
      } else {
        Get.to(() => page);
      }
      return;
    } else if (route != null) {
      if (off) {
        Get.offAndToNamed(route);
      } else {
        Get.toNamed(route);
      }
      return;
    }
  }

  static pop(BuildContext context) {
    Navigator.pop(context);
  }

  static replaceScreen(BuildContext context, Widget page) {
    pushNewScreen(
      context,
      screen: page,
    );
  }

  static pushReplacementNamed(BuildContext context, String route) {
    Navigator.pushReplacementNamed(context, route);
  }
}
