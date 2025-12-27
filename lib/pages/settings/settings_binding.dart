import 'package:cpit/pages/settings/settings_controller.dart';
import 'package:get/get.dart';

/// Sets up dependency injection for the Settings module using GetX.
class SettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingsController());
  }
}
