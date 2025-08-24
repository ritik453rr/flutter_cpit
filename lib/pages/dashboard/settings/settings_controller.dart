import 'package:cpit/common/app_storage.dart';
import 'package:cpit/model/setting_model.dart';
import 'package:cpit/routing/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// Controller for handling logic and actions on the Settings screen.
class SettingsController extends GetxController {
  /// Lists
  var settings = <SettingModel>[
    SettingModel(
      icon: Icons.language,
      title: "Language",
      suffixIcon: Icons.arrow_forward_ios,
    ),
    SettingModel(
      icon: Icons.light,
      title: "Theme",
      suffixIcon: Icons.arrow_forward_ios,
    ),
    SettingModel(
      icon: Icons.logout,
      title: "Logout",
      suffixIcon: Icons.arrow_forward_ios,
    ),
  ];
  void logout() {
    AppStorage.setLoginStatus(status: false);
    Get.offAllNamed(AppRoutes.login);
  }
}
