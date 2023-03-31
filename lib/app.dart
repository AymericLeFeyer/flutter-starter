import 'package:starter/bindings/bindings.dart';
import 'package:starter/firebase_options.dart';
import 'package:starter/router/router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:starter/ui/extensions/builders.extension.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      ),
      builder: (context, snapshot) {
        return GestureDetector(
          onTap: () {
            FocusScopeNode currentFocus = FocusScope.of(context);

            if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
              FocusManager.instance.primaryFocus?.unfocus();
            }
          },
          child: GetMaterialApp(
            title: 'starter',
            debugShowCheckedModeBanner: false,
            themeMode: ThemeMode.light,
            initialBinding: MyBindings(),
            getPages: MyRouter.route,
            initialRoute: '/example',
          ),
        );
      },
    ).loader;
  }
}
