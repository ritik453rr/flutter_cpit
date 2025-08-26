import 'package:cpit/language/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// Logout adaptive dialog with wider width.
logoutDialog({required VoidCallback onConfirm}) {
  return Get.dialog(
    Dialog(
      child: IntrinsicHeight(
        child: SizedBox(
          width: Get.width,
          child: AlertDialog.adaptive(
            insetPadding: EdgeInsets.all(0),

            title: Text(Strings.logout.tr),
            content: Text(Strings.sureToLogout.tr),
            actions: [
              TextButton(
                onPressed: () => Get.back(),
                child: Text(Strings.cancel.tr),
              ),
              TextButton(
                onPressed: () {
                  Get.back();
                  onConfirm();
                },
                child: Text(Strings.logout.tr),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
