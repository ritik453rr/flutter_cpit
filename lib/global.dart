import 'package:cpit/common/app_colors.dart';
import 'package:cpit/common/app_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

/// Global utility class for common functions
class Global {
  static const hzPadding = 20.0;
  static const borderRadius = 10.0;

  /// Opens a URL in the default web browser
  static void openLink(String url) {
    launchUrl(Uri.parse(url));
  }

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
  }

  // Hides the keyboard by removing focus from the current input field
  static hideKeyBoard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  /// Set safe area color in view
  static void setSafeArea({bool isLight = true}) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemNavigationBarColor: isLight ? AppColors.white : AppColors.black,
        systemNavigationBarIconBrightness:
            isLight ? Brightness.dark : Brightness.light,
        statusBarIconBrightness: isLight ? Brightness.dark : Brightness.light,
      ),
    );
  }
}
