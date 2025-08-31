import 'package:cpit/common/app_fonts.dart';
import 'package:cpit/language/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// Logout adaptive dialog with wider width.
logoutDialog({required VoidCallback onConfirm}) {
  return Get.dialog(
    Dialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 30),
      child: IntrinsicHeight(
        child: SizedBox(
          width: Get.width,
          child: AlertDialog.adaptive(
            insetPadding: EdgeInsets.all(0),

            title: Text(
              Strings.logout.tr,
              style: TextStyle(fontFamily: AppFonts.medium),
            ),
            content: Text(
              Strings.sureToLogout.tr,
              style: TextStyle(fontFamily: AppFonts.medium),
            ),
            actions: [
              TextButton(
                onPressed: () => Get.back(),
                style: TextButton.styleFrom(
                  textStyle: TextStyle(fontFamily: AppFonts.medium),
                ),
                child: Text(Strings.cancel.tr),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: TextStyle(fontFamily: AppFonts.medium),
                ),
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
