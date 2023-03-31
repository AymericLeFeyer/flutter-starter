import 'package:url_launcher/url_launcher.dart';

class Launchers {
  static Future<void> launchUrl(url) async {
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      print("Cound not launch $url");
    }
  }
}