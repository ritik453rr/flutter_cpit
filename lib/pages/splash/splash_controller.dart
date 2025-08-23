import 'package:cpit/common/app_storage.dart';
import 'package:cpit/routing/app_routes.dart';
import 'package:get/get.dart';

/// This controller handles the logic for the Splash screen.
class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    navigation();
  }

  /// Method to navigate to new screen
  void navigation() {
    Future.delayed(const Duration(seconds: 2), () {
      AppStorage.isLogin()
          ? Get.offNamed(AppRoutes.dashboard)
          : Get.offNamed(AppRoutes.login);
    });
  }
}
