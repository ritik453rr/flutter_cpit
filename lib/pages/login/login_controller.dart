import 'package:cpit/global.dart';
import 'package:cpit/language/strings.dart';
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
    var email = emailController.text;
    if (email.isEmpty) {
      emailError.value = Strings.pleaseEnterEmail.tr;
      return false;
    } else if (!RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z][a-zA-Z0-9.-]*\.[a-zA-Z]{2,}$',
    ).hasMatch(email)) {
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

  void login() {
    if (validateEmail() && validatePass()) {
      Global.hideKeyBoard();
      isLoading.value = true;
      Future.delayed(Duration(seconds: 2), () {
        isLoading.value = false;
      });
    }
  }

  ///
  void onChangeEmail(String val) {
    val.isEmpty
        ? emailError.value = Strings.pleaseEnterEmail.tr
        : emailError.value = null;
  }

  void onChangePass(String val) {
    val.isEmpty
        ? passwordError.value = Strings.pleaseEnterPasswrod.tr
        : passwordError.value = null;
  }
}
