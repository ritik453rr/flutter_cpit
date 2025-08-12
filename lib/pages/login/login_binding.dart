import 'package:cpit/pages/login/login_controller.dart';
import 'package:get/get.dart';

/// This class is responsible for binding the LoginController to the LoginView.
class LoginBinding extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
} 