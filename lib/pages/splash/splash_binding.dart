import 'package:cpit/pages/splash/splash_controller.dart';
import 'package:get/get.dart';


/// This class is responsible for binding the SplashController to the SplashView.
class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }
}
