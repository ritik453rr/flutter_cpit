import 'package:cpit/pages/dashboard/home/home_controller.dart';
import 'package:get/get.dart';

/// Sets up dependency injection for the Home module using GetX.
class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
