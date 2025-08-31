import 'package:cpit/common/app_images.dart';
import 'package:cpit/common/app_storage.dart';
import 'package:cpit/dialogs/language_dialog.dart';
import 'package:cpit/dialogs/logout_dialog.dart';
import 'package:cpit/dialogs/theme_dialog.dart';
import 'package:cpit/global.dart';
import 'package:cpit/language/strings.dart';
import 'package:cpit/model/setting_model.dart';
import 'package:cpit/routing/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// Controller for handling logic and actions on the Settings screen.
class SettingsController extends GetxController {
  /// variables
  var selectedLangCode = "".obs;
  var themeIndex = 1.obs;

  /// Lists
  var settings = <SettingModel>[
    SettingModel(
      icon: Icons.language,
      title: Strings.languages,
      suffixIcon: AppImages.iconForwardArrowIos,
    ),
    SettingModel(
      icon: Icons.light,
      title: Strings.theme,
      suffixIcon: AppImages.iconForwardArrowIos,
    ),
    SettingModel(
      icon: Icons.logout,
      title: Strings.logout,
      suffixIcon: AppImages.iconForwardArrowIos,
    ),
  ];

  @override
  void onInit() {
    getLanguage();
    getThemeIndex();
    super.onInit();
  }

  /// Get selected language from local storage.
  void getLanguage() {
    switch (AppStorage.getLangCode()) {
      case 'hi':
        selectedLangCode.value = "hi";

      case 'en':
        selectedLangCode.value = "en";

      default:
        selectedLangCode.value = "";
    }
  }

  /// void get theme index
  void getThemeIndex() {
    themeIndex.value = AppStorage.isDarkTheme() ? 0 : 1;
  }

  /// Handle logout
  void logout() {
    Get.offAllNamed(AppRoutes.login);
    AppStorage.setLoginStatus(status: false);
  }

  /// Handle on tap setting item
  void onTapItem(int index) {
    switch (index) {
      case 0:
        languageDialog(
          selectedLangCode: selectedLangCode,
          onValuePicked: (language) {
            switch (language.isoCode) {
              case 'hi':
                Global.updateLocal(langCode: "hi", countryCode: "IN");
                selectedLangCode.value = language.isoCode;
                break;
              case 'en':
                Global.updateLocal(langCode: "en", countryCode: "US");
                selectedLangCode.value = language.isoCode;
                break;
            }
          },
        );
        break;
      case 1:
        themeDialog(themeIndex: themeIndex);

        break;
      case 2:
        logoutDialog(
          onConfirm: () {
            logout();
          },
        );
        break;
    }
  }
}
