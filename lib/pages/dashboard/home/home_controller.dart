// import 'package:easy_pdf_viewer/easy_pdf_viewer.dart';

import 'package:cpit/global.dart';
import 'package:cpit/model/student_model.dart';
import 'package:cpit/routing/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
// import 'package:pull_to_refresh/pull_to_refresh.dart';

/// Controller for managing the state and logic of the Home view.
class HomeController extends GetxController {
  /// Controllers
  var refreshCtr = RefreshController();
  var serchCtr = TextEditingController();

  /// Variables
  var loading = true.obs;

  /// Lists
  var allStudents = <StudentModel>[].obs;
  var filteredStudents = <StudentModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    ever(allStudents, (_) {
      // Only update if no active search filter
      if (serchCtr.text.trim().isEmpty) {
        filteredStudents.assignAll(allStudents);
      }
    });
    Future.delayed(Duration(seconds: 2), () {
      filteredStudents.assignAll(allStudents);
      loading.value = false;
    });
  }

  /// Handle item tap event
  void onTapItem(int index) {
    Global.hideKeyBoard();
    Get.toNamed(AppRoutes.studentDetail, arguments: filteredStudents[index]);
  }

  /// Handle onTap floating button
  void onTapFloating() {
    Get.toNamed(AppRoutes.addStudent);
  }

  /// Method to search student
  void searchStudent(String val) {
    if (val.isEmpty) {
      filteredStudents.assignAll(allStudents);
    } else {
      // filteredStudents.clear();
      filteredStudents.assignAll(
        allStudents
            .where(
              (student) =>
                  student.name.toLowerCase().contains(val.toLowerCase()) ||
                  student.id.toLowerCase().contains(val.toLowerCase()),
            )
            .toList(),
      );
    }
    update();
  }
}
