import 'package:get/get.dart';

enum MessageType { info, warning, error }

class Snackbar {
  static void showMessage(
      {required String message,
      String description = "",
      MessageType? type,
      Function(GetSnackBar)? onTap}) {
    print(message);
    Get.snackbar(message, description, onTap: onTap);
  }
}
