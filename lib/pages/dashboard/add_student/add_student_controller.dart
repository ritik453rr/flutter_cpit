import 'dart:io';
import 'package:cpit/common/app_colors.dart';
import 'package:cpit/common/app_fonts.dart';
import 'package:cpit/common/common_ui.dart';
import 'package:cpit/dialogs/camera_dialog.dart';
import 'package:cpit/dialogs/gallery_dialog.dart';
import 'package:cpit/global.dart';
import 'package:cpit/language/strings.dart';
import 'package:cpit/model/student_model.dart';
import 'package:cpit/pages/dashboard/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:uid/uid.dart';

/// Controller for Add Student functionality
class AddStudentController extends GetxController {
  /// Controllers
  var nameCtr = TextEditingController();
  var fatherNameCtr = TextEditingController();
  var dobCtr = TextEditingController();
  var courseCtr = TextEditingController();
  var registrationCtr = TextEditingController();
  var emailCtr = TextEditingController();
  var phoneCtr = TextEditingController();
  var addressCtr = TextEditingController();

  /// Variables
  var pickedImage = Rx<File?>(null);
  var isLoading = false.obs;
  var gender = "".obs;

  /// Method to show bottom sheet for image upload options
  void uploadImg() {
    Global.hapticFeedback();
    Get.bottomSheet(
      backgroundColor: Theme.of(Get.context!).bottomSheetTheme.backgroundColor,
      SafeArea(
        child: IntrinsicHeight(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                // Camera option
                Container(
                  width: 50,
                  height: 5,
                  decoration: BoxDecoration(
                    color: AppColors.grey.withValues(alpha: 0.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                InkWell(
                  onTap: () async {
                    Global.hapticFeedback();
                    if (await Permission.camera.isGranted) {
                      pickImage(source: ImageSource.camera);
                    } else if (await Permission.camera.isPermanentlyDenied) {
                      cameraDialog();
                    } else {
                      await Permission.camera.request();
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 5),
                    child: Row(
                      children: [
                        Icon(Icons.camera, size: 28),
                        SizedBox(width: 8),
                        Text(
                          Strings.camera.tr,
                          style: CommonUi.customTextStyle(
                            fontSize: 16,
                            fontFamily: AppFonts.regular,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () async {
                    Global.hapticFeedback();
                    if (await Permission.photos.isGranted) {
                      pickImage(source: ImageSource.gallery);
                    } else if (await Permission.photos.isPermanentlyDenied) {
                      galleryDialog();
                    } else {
                      await Permission.photos.request();
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 10),
                    child: Row(
                      children: [
                        Icon(Icons.image, size: 28),
                        SizedBox(width: 8),
                        Text(
                          Strings.gallery.tr,
                          style: CommonUi.customTextStyle(
                            fontSize: 16,
                            fontFamily: AppFonts.regular,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Method to pick image from specified source (camera or gallery)
  Future<void> pickImage({required ImageSource source}) async {
    Get.back();
    var imagePicker = ImagePicker();
    var pickedFile = await imagePicker.pickImage(source: source);
    if (pickedFile != null) {
      pickedImage.value = File(pickedFile.path);
    }
  }

  /// Method to add student
  void addStudent() {
    if (isInputValid()) {
      var homeCtr = Get.find<HomeController>();
      isLoading.value = true;
      var num = homeCtr.filteredStudents.length + 1;

      homeCtr.allStudents.add(
        StudentModel(
          name: nameCtr.text.trim(),
          id: UId.getId().toUpperCase(),
          fathersName: fatherNameCtr.text.trim(),
          dob: dobCtr.text.trim(),
          gender: gender.value,
          course: courseCtr.text.trim(),
          registrationDate: registrationCtr.text.trim(),
          email: emailCtr.text.trim(),
          phone: phoneCtr.text.trim(),
          address: addressCtr.text.trim(),
          imgUrl: "https://randomuser.me/api/portraits/men/$num.jpg",
        ),
      );
      Future.delayed(Duration(seconds: 2), () {
        isLoading.value = false;
        Get.back();
        CommonUi.snackbar(
          title: Strings.success.tr,
          message: Strings.studentRegisteredSuccessfully.tr,
          color: AppColors.green,
        );
      });
    }
  }

  /// Method to validate input fields
  bool isInputValid() {
    var name = nameCtr.text.trim();
    var fatherName = fatherNameCtr.text.trim();
    var dob = dobCtr.text.trim();
    // var gender = genderCtr.text.trim();
    var couse = courseCtr.text.trim();
    var registration = registrationCtr.text.trim();
    var email = emailCtr.text.trim();
    var phone = phoneCtr.text.trim();
    var address = addressCtr.text.trim();

    if (name.isEmpty) {
      CommonUi.snackbar(
        title: Strings.nameRequired.tr,
        message: Strings.pleaseEnterName.tr,
      );
      return false;
    }

    if (fatherName.isEmpty) {
      CommonUi.snackbar(
        title: Strings.fathersNameRequired.tr,
        message: Strings.pleaseEnterFatherName.tr,
      );
      return false;
    }

    if (dob.isEmpty) {
      CommonUi.snackbar(
        title: Strings.dobRequired.tr,
        message: Strings.pleaseSelectDob.tr,
      );
      return false;
    }

    if (gender.isEmpty) {
      CommonUi.snackbar(
        title: Strings.genderRequired.tr,
        message: Strings.pleaseSelectGender.tr,
      );
      return false;
    }

    if (couse.isEmpty) {
      CommonUi.snackbar(
        title: Strings.courseRequired.tr,
        message: Strings.pleaseEnterCourse.tr,
      );
      return false;
    }

    if (registration.isEmpty) {
      CommonUi.snackbar(
        title: Strings.regisDateRequired.tr,
        message: Strings.pleaseSelectRegisDate.tr,
      );
      return false;
    }

    if (email.isEmpty) {
      CommonUi.snackbar(
        title: Strings.emailRequired.tr,
        message: Strings.pleaseEnterEmail.tr,
      );
      return false;
    }

    if (!Global.isValidEmail(email)) {
      CommonUi.snackbar(
        title: Strings.invalidEmail.tr,
        message: Strings.pleaseEnterValidEmail.tr,
      );
      return false;
    }

    if (phone.isEmpty) {
      CommonUi.snackbar(
        title: Strings.phoneRequired.tr,
        message: Strings.pleaseEnterYourPhone.tr,
      );
      return false;
    } else if (phone.length < 10) {
      CommonUi.snackbar(
        title: Strings.invalidPhone.tr,
        message: Strings.pleaseEnterValidPhone.tr,
      );
      return false;
    }

    if (address.isEmpty) {
      CommonUi.snackbar(
        title: Strings.addressRequired.tr,
        message: Strings.pleaseEnterAddress.tr,
      );
      return false;
    }
    return true;
  }

  /// Method to select date of birth
  Future<void> selectDobDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(), // default DOB
      firstDate: DateTime(1950), // oldest date user can pick
      lastDate: DateTime.now(), // today — DOB can't be in the future
    );

    if (pickedDate != null) {
      String formattedDate =
          "${pickedDate.day.toString().padLeft(2, '0')}-${pickedDate.month.toString().padLeft(2, '0')}-${pickedDate.year}";
      dobCtr.text = formattedDate;
    }
  }

  Future<void> selectRegistrationDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(), // default registration date
      firstDate: DateTime(2000), // oldest date user can pick
      lastDate:
          DateTime.now(), // today — registration date can't be in the future
    );

    if (pickedDate != null) {
      String formattedDate =
          "${pickedDate.day.toString().padLeft(2, '0')}-${pickedDate.month.toString().padLeft(2, '0')}-${pickedDate.year}";
      registrationCtr.text = formattedDate;
    }
  }
}
