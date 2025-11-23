import 'package:cpit/common/app_colors.dart';
import 'package:cpit/common/app_storage.dart';
import 'package:cpit/common/common_ui.dart';
import 'package:cpit/global.dart';
import 'package:cpit/language/strings.dart';
import 'package:cpit/routing/app_routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

/// This controller handles the logic for the Login screen.
class LoginController extends GetxController {
  /// Controllers
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  /// Variables
  RxnString emailError = RxnString(null);
  RxnString passwordError = RxnString(null);
  var isLoading = false.obs;

  /// Method to validate email
  bool validateEmail() {
    var email = emailController.text.trim();
    if (email.isEmpty) {
      emailError.value = Strings.pleaseEnterEmail.tr;
      return false;
    }
    if (!Global.isValidEmail(email)) {
      emailError.value = Strings.enterValidEmail.tr;
      return false;
    }
    return true;
  }

  /// Method to validate password
  bool validatePass() {
    var password = passwordController.text.trim();
    if (password.isEmpty) {
      passwordError.value = Strings.pleaseEnterPasswrod.tr;
      return false;
    }
    return true;
  }

  /// Validates inputs and simulates a login process with a loading state.
  Future<void> login() async {
    if (isLoading.value) return; // Prevent multiple login attempts
    if (validateEmail() && validatePass()) {
      Global.hideKeyBoard();
      isLoading.value = true;
      try {
        final credential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(
              email: emailController.text.trim(),
              password: passwordController.text.trim(),
            );
        isLoading.value = false;
        AppStorage.setLoginStatus(status: true);
        Get.offAllNamed(AppRoutes.dashboard);
      } on FirebaseAuthException catch (e) {
        isLoading.value = false;
        CommonUi.snackbar(
          title: Strings.loginFailed.tr,
          message: e.message ?? Strings.somethingWentWrong.tr,
          color: AppColors.red,
        );
      }
    }
  }

  /// Updates email error message based on input validation.
  void onChangeEmail(String val) {
    val.isEmpty
        ? emailError.value = Strings.pleaseEnterEmail.tr
        : emailError.value = null;
  }

  /// Updates password error message based on input validation.
  void onChangePass(String val) {
    val.trim().isEmpty
        ? passwordError.value = Strings.pleaseEnterPasswrod.tr
        : passwordError.value = null;
  }
}
