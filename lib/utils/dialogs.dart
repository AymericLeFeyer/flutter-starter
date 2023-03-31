import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dialogs {
  static void dialog({required Widget content}) {
    Get.dialog(Dialog(
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: content,
        )));
  }

  static void alertDialog(
      {required Widget content, required BuildContext context, List<Widget>? actions}) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: content,
            actions: actions,
            insetPadding: EdgeInsets.all(24),
          );
        });
  }
}
