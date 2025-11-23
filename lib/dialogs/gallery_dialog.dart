import 'package:cpit/global.dart';
import 'package:cpit/language/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

/// Displays a dialog prompting the user to enable gallery permissions in settings.
Future galleryDialog() {
  return Get.dialog(
    AlertDialog.adaptive(
      title: Text(Strings.permissionRequired.tr),
      content: Text(
       Strings.enableGalleryPermission.tr,
      ),
      actions: [
        TextButton(
          onPressed: () {
            Global.hapticFeedback();
            Get.back();
          },
          child: Text(Strings.cancel.tr),
        ),
        TextButton(
          onPressed: () {
            Global.hapticFeedback();
            Get.back();
            openAppSettings();
          },
          child: Text(Strings.openSettings.tr),
        ),
      ],
    ),
  );
}
