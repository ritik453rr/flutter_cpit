import 'package:cpit/common/app_colors.dart';
import 'package:cpit/common/app_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

/// Global utility class for common functions
class Global {
  static const hzPadding = 20.0;
  static const fieldRadius = 12.0;
  static const radius = 12.0;
  static const tempImgUrl =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkAJEkJQ1WumU0hXNpXdgBt9NUKc0QDVIiaw&s";

  static const pdfUrl =
      "https://www.ecma-international.org/wp-content/uploads/ECMA-262_12th_edition_june_2021.pdf";

  /// Opens a URL in the default web browser with a fallback
  static void hapticFeedback() {
    if (GetPlatform.isIOS) {
      HapticFeedback.lightImpact();
    } else {
      HapticFeedback.vibrate();
    }
  }

  /// Updates app locale and saves language and country codes locally.
  static void updateLocal({
    required String langCode,
    required String countryCode,
  }) {
    Get.updateLocale(Locale(langCode, countryCode));
    AppStorage.setLangCode(code: langCode);
    AppStorage.setCountryCode(code: countryCode);
    //  RestartApp.restartApp(Get.context!);
  }

  // Hides the keyboard by removing focus from the current input field
  static hideKeyBoard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  /// Set safe area color in view
  static void setSafeArea({required bool isDark}) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemNavigationBarColor: isDark ? AppColors.black : AppColors.white,
        systemNavigationBarIconBrightness:
            isDark ? Brightness.light : Brightness.dark,
        statusBarIconBrightness: isDark ? Brightness.light : Brightness.dark,
      ),
    );
  }

  /// Method to change is valid email
  static bool isValidEmail(String email) {
    return RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z][a-zA-Z0-9.-]*\.[a-zA-Z]{2,}$',
    ).hasMatch(email);
  }
}
