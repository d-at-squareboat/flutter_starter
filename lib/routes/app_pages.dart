import 'package:get/get.dart';
import 'package:starter/modules/home/home_page.dart';
import 'package:starter/modules/home/home_page_binding.dart';
import 'package:starter/modules/login/login_page.dart';
import 'package:starter/modules/login/login_page_binding.dart';
import 'package:starter/modules/splash/splash_page.dart';
import 'package:starter/modules/splash/splash_page_binding.dart';
part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashPage(),
      binding: SplashPageBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginPage(),
      binding: LoginPageBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
      binding: HomePageBinding(),
    ),
  ];
}
