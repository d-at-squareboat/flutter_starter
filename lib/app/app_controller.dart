import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:starter/data/models/user.model.dart';
import 'package:starter/data/repository/app_repository.dart';
import 'package:starter/routes/app_pages.dart';
import 'package:starter/utils/helper/exception_handler.dart';
import 'package:starter/utils/services/dynamic_link_service.dart';

class AppController extends GetxController {
  final AppRepository repository = AppRepository();

  final Rx<UserModel> _userModel = Rx<UserModel>(null);
  UserModel get userModel => this._userModel.value;
  set userModel(UserModel value) => this._userModel.value = value;

  @override
  void onInit() {
    super.onInit();
    DynamicLinkService.handle();
    checkAuthStatus();
  }

  void checkAuthStatus() async {
    try {
      userModel = await repository.getCurrentUser();
      if (userModel == null) {
        Get.offAllNamed(Routes.LOGIN);
      } else {
        Get.offAllNamed(Routes.HOME);
      }
    } on CustomException catch (e) {
      debugPrint(e.message);
      Get.offAllNamed(
        Routes.LOGIN,
      );
    }
  }

  void signOut() async {
    await repository.signOut();
    Get.offAllNamed(Routes.LOGIN);
  }
}
