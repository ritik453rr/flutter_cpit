import 'package:cpit/common/custom_appbar.dart';
import 'package:cpit/language/strings.dart';
import 'package:cpit/pages/dashboard/settings/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// A stateless widget that displays the Settings screen with logout functionality.
class SettingsView extends StatelessWidget {
  SettingsView({super.key});
  final controller = Get.find<SettingsController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        title: Strings.settings.tr,
        centerTitle: false,
        actionIcon1: Icons.logout,
        onTapAction1: () {
          controller.logout();
        },
      ),

      body: Center(child: Text(Strings.settings.tr)),
    );
  }
}
