import 'package:get/get.dart';
import 'package:starter/modules/home/home_page_controller.dart';

class HomePageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(HomePageController());
  }
}
