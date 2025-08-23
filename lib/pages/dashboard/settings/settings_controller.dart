import 'package:cpit/common/app_storage.dart';
import 'package:cpit/routing/app_routes.dart';
import 'package:get/get.dart';

/// Controller for handling logic and actions on the Settings screen.
class SettingsController extends GetxController {
  void logout() {
    AppStorage.setLoginStatus(status: false);
    Get.offAllNamed(AppRoutes.login);
  }
}
