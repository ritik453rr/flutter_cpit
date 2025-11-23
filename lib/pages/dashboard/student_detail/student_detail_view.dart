import 'package:cpit/common/common_ui.dart';
import 'package:cpit/common/custom_appbar.dart';
import 'package:cpit/global.dart';
import 'package:cpit/language/strings.dart';
import 'package:cpit/pages/dashboard/student_detail/student_detail_controller.dart';
import 'package:cpit/pages/dashboard/student_detail/widgets/student_detail_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// A stateless widget that displays the Student Detail screen.
class StudentDetailView extends StatelessWidget {
  StudentDetailView({super.key});
  final controller = Get.find<StudentDetailController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: Strings.studentDetail.tr),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Global.hzPadding),
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ▬▬▬ Profile Image Section ▬▬▬
                Center(
                  child: CommonUi.networkImg(
                    imgUrl: controller.student.imgUrl,
                    height: 300,
                    width: 300,
                    borderRadius: 6,
                  ),
                ),

                const SizedBox(height: 20),

                // Name...
                detailField(
                  title: Strings.name.tr,
                  value: controller.student.name,
                ),
                // Father's Name...
                detailField(
                  title: Strings.fathersName.tr,
                  value: controller.student.fathersName,
                ),
                // DOB...
                detailField(
                  title: Strings.dob.tr,
                  value: controller.student.dob,
                ),
                // Gender
                detailField(
                  title: Strings.gender.tr,
                  value: controller.student.gender,
                ),
                // Course
                detailField(
                  title: Strings.course.tr,
                  value: controller.student.course,
                ),

                /// Registration Date
                detailField(
                  title: Strings.registrationDate.tr,
                  value: controller.student.registrationDate,
                ),
                // Email
                detailField(
                  title: Strings.email.tr,
                  value: controller.student.email,
                ),
                // Phone
                detailField(
                  title: Strings.phone.tr,
                  value: controller.student.phone,
                ),
                // Address
                detailField(
                  title: Strings.address.tr,
                  value: controller.student.address,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
