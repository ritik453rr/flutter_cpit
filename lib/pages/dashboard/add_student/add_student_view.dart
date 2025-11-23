import 'package:cpit/common/app_fonts.dart';
import 'package:cpit/common/app_fontsize.dart';
import 'package:cpit/common/common_ui.dart';
import 'package:cpit/common/custom_appbar.dart';
import 'package:cpit/common/custom_button.dart';
import 'package:cpit/global.dart';
import 'package:cpit/language/strings.dart';
import 'package:cpit/pages/dashboard/add_student/add_student_controller.dart';
import 'package:cpit/pages/dashboard/add_student/add_student_widgets/add_students_widgets.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

/// Add Student View Screen
class AddStudentView extends StatelessWidget {
  AddStudentView({super.key});
  final controller = Get.find<AddStudentController>();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Global.hideKeyBoard();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: customAppBar(title: Strings.addStudent.tr),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Global.hzPadding),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Name Field
                        textField(
                          controller: controller.nameCtr,
                          textInputAction: TextInputAction.next,
                          textCapitalization: TextCapitalization.words,
                          name: Strings.name.tr,
                          hintText: Strings.enterYourName.tr,
                        ),
                        // Fathers Name
                        textField(
                          controller: controller.fatherNameCtr,
                          textInputAction: TextInputAction.next,
                          textCapitalization: TextCapitalization.words,
                          name: Strings.fathersName.tr,
                          hintText: Strings.enterFatherName.tr,
                        ),
                        // Date of birth
                        textField(
                          controller: controller.dobCtr,
                          readOnly: true,
                          name: Strings.dob.tr,
                          hintText: Strings.selectDob.tr,
                          suffixIcon: Icons.keyboard_arrow_down,
                          onTap: () {
                            controller.selectDobDate(context);
                          },
                        ),
                        // Gender
                        Text(
                          Strings.gender.tr,
                          style: CommonUi.customTextStyle(
                            fontSize: AppFontsize.font16,
                            fontFamily: AppFonts.medium,
                          ),
                        ),
                        SizedBox(height: 14),

                        Obx(
                          () => DropdownButton2(
                            value:
                                controller.gender.value.isEmpty
                                    ? null
                                    : controller.gender.value,
                            underline: SizedBox(),
                            isExpanded: true,
                            hint: Text(Strings.selectGender.tr),
                            items: [
                              DropdownMenuItem<String>(
                                value: 'Male',
                                child: Text(Strings.male.tr),
                              ),
                              DropdownMenuItem<String>(
                                value: "Female",
                                child: Text(Strings.female.tr),
                              ),
                              DropdownMenuItem<String>(
                                value: "Other",
                                child: Text(Strings.other.tr),
                              ),
                            ],
                            onChanged: (value) {
                              if (value != null) {
                                controller.gender.value = value;
                              }
                            },
                            buttonStyleData: ButtonStyleData(
                              height: 52,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color:
                                    Theme.of(
                                      context,
                                    ).inputDecorationTheme.fillColor,
                                border: Border.all(
                                  color:
                                      Theme.of(context)
                                          .inputDecorationTheme
                                          .enabledBorder!
                                          .borderSide
                                          .color,
                                ),
                              ),
                            ),
                            dropdownStyleData: DropdownStyleData(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color:
                                    Theme.of(
                                      context,
                                    ).inputDecorationTheme.fillColor,
                              ),
                            ),

                            iconStyleData: IconStyleData(
                              icon: Padding(
                                padding: const EdgeInsets.only(right: 12),
                                child: Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Theme.of(context).iconTheme.color,
                                ),
                              ),
                              openMenuIcon: Padding(
                                padding: const EdgeInsets.only(right: 12),
                                child: Icon(
                                  Icons.keyboard_arrow_up,
                                  color: Theme.of(context).iconTheme.color,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 14),
                        // Course
                        textField(
                          controller: controller.courseCtr,
                          textInputAction: TextInputAction.next,
                          textCapitalization: TextCapitalization.words,
                          name: Strings.course.tr,
                          hintText: Strings.enterCourse.tr,
                        ),
                        // Registration Date
                        textField(
                          controller: controller.registrationCtr,
                          readOnly: true,
                          name: Strings.registrationDate.tr,
                          hintText: Strings.selectRegisDate.tr,
                          suffixIcon: Icons.keyboard_arrow_down,
                          onTap: () {
                            controller.selectRegistrationDate(context);
                          },
                        ),
                        // Email Field
                        textField(
                          controller: controller.emailCtr,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.emailAddress,
                          name: Strings.email.tr,
                          hintText: Strings.enterYourEmail.tr,
                        ),
                        // Phone Field
                        textField(
                          controller: controller.phoneCtr,
                          name: Strings.phone.tr,
                          keyboardType: TextInputType.phone,
                          textInputAction: TextInputAction.next,
                          hintText: Strings.enterYourPhone.tr,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(10),
                          ],
                        ),
                        // Address Field
                        textField(
                          controller: controller.addressCtr,
                          name: Strings.address.tr,
                          keyboardType: TextInputType.streetAddress,
                          textCapitalization: TextCapitalization.words,
                          textInputAction: TextInputAction.done,
                          hintText: Strings.enterYourAddress.tr,
                        ),

                        // Pick Image Section
                        Padding(
                          padding: const EdgeInsets.only(bottom: 14),
                          child: Text(
                            Strings.pickImage.tr,
                            style: CommonUi.customTextStyle(
                              fontSize: AppFontsize.font16,
                              fontFamily: AppFonts.medium,
                            ),
                          ),
                        ),

                        Obx(
                          () =>
                              controller.pickedImage.value != null
                                  ? Center(
                                    child: GestureDetector(
                                      behavior: HitTestBehavior.translucent,
                                      onTap: () {
                                        controller.uploadImg();
                                      },
                                      child: Image.file(
                                        controller.pickedImage.value!,
                                        height: 300,
                                        width: 300,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  )
                                  : GestureDetector(
                                    behavior: HitTestBehavior.translucent,
                                    onTap: () {
                                      controller.uploadImg();
                                    },
                                    child: Center(
                                      child: DottedBorder(
                                        options: RectDottedBorderOptions(
                                          dashPattern: [5, 8],
                                          strokeWidth: 2,
                                          color:
                                              Theme.of(
                                                context,
                                              ).iconTheme.color!,
                                        ),
                                        child: SizedBox(
                                          height: 300,
                                          width: 300,

                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.image_outlined,
                                                size: 50,
                                              ),
                                              Text(
                                                Strings.tapToUploadImage.tr,
                                                style: CommonUi.customTextStyle(
                                                  fontSize: AppFontsize.font16,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
                /// Add Student Button
                customButton(
                  isLoading: controller.isLoading,
                  width: Get.width,
                  height: 45,
                  title: Strings.addStudent.tr,
                  onPressed: () {
                    controller.addStudent();
                  },
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
