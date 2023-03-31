import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class Instances {
  static void initFirebase() {
    Get.put<FirebaseAuth>(FirebaseAuth.instance);
    Get.put<FirebaseMessaging>(FirebaseMessaging.instance);
  }

  static void initStorage() {
    Get.put<GetStorage>(GetStorage());
  }
}
