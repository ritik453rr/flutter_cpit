import 'package:cpit/common/app_colors.dart';
import 'package:cpit/common/app_fonts.dart';
import 'package:cpit/common/common_ui.dart';
import 'package:cpit/global.dart';
import 'package:cpit/language/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// Logout adaptive dialog with wider width.
logoutDialog({required VoidCallback onConfirm}) {
  return Get.dialog(
    Dialog(
      child: IntrinsicHeight(
        child: AlertDialog.adaptive(
          insetPadding: EdgeInsets.all(0),
          title: Text(
            "${Strings.logout.tr}?",
            style: CommonUi.customTextStyle(fontSize: 24),
          ),

          content: Text(
            "${Strings.sureToLogout.tr}?",
            style: CommonUi.customTextStyle(),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Global.hapticFeedback();
                Get.back();
              },

              child: Text(
                Strings.cancel.tr,
                style: CommonUi.customTextStyle(
                  color: AppColors.blue,
                  fontFamily: AppFonts.medium,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Global.hapticFeedback();
                Get.back();
                onConfirm();
              },
              child: Text(
                Strings.logout.tr,
                style: CommonUi.customTextStyle(
                  color: AppColors.blue,
                  fontFamily: AppFonts.medium,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
