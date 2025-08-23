import 'package:cpit/pages/dashboard/dashboard_main/dashboard_controller.dart';
import 'package:get/instance_manager.dart';

/// Binding class for Dashboard page dependencies.
class DashboardBinding extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut(() => DashboardController());
  }
}
