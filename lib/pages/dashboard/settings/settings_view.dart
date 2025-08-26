import 'package:cpit/common/custom_appbar.dart';
import 'package:cpit/global.dart';
import 'package:cpit/language/strings.dart';
import 'package:cpit/pages/dashboard/settings/settings_controller.dart';
import 'package:cpit/pages/dashboard/settings/widgets/settings_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// A stateless widget that displays the Settings screen with logout functionality.
class SettingsView extends StatelessWidget {
  SettingsView({super.key});
  final controller = Get.find<SettingsController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: Strings.settings.tr, centerTitle: false),

      body: ListView.builder(
        padding: EdgeInsets.symmetric(
          horizontal:Global.hzPadding,
          vertical: 30,
        ),
        itemCount: controller.settings.length,
        itemBuilder: (context, index) {
          final item = controller.settings[index];
          return settingItem(
            icon: item.icon,
            title: item.title.tr,
            suffixIcon: item.suffixIcon,
            onTap: () {
              controller.onTapItem(index);
            },
          );
        },
      ),
    );
  }
}
