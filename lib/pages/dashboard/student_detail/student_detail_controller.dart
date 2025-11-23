import 'package:cpit/model/student_model.dart';
import 'package:get/get.dart';

/// Controller for managing the state and logic of the Student Detail view.
class StudentDetailController extends GetxController{
late StudentModel student;

  @override
  void onInit() {
    super.onInit();
    student = Get.arguments;
  }
}