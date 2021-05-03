import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starter/app/app_controller.dart';
import 'package:starter/routes/app_pages.dart';
import 'package:starter/utils/values/keys.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // title: Env.title,
      title: 'Starter',
      navigatorKey: GlobalKeys.navigationKey,
      debugShowCheckedModeBanner: false,
      // theme: appThemeData,
      initialRoute: Routes.SPLASH,
      getPages: AppPages.pages,
      defaultTransition: Transition.fade,
      onInit: () {
        Get.put(AppController());
      },
    );
  }
}
