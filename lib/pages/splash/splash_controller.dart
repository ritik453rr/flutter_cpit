import 'package:cpit/routing/app_routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    // navigation();
  }

  void navigation() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.offNamed(AppRoutes.login); 
    });
  }
}
