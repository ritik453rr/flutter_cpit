import 'package:cpit/pages/dashboard/student_detail/student_detail_controller.dart';
import 'package:get/get.dart';

/// Binds the StudentDetailController to its view.
class StudentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StudentDetailController());
  }
}
