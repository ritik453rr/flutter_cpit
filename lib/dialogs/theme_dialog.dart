import 'package:cpit/common/app_fonts.dart';
import 'package:cpit/common/app_fontsize.dart';
import 'package:cpit/common/app_theme.dart';
import 'package:cpit/common/common_ui.dart';
import 'package:cpit/global.dart';
import 'package:cpit/language/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// Theme dialog to change app theme
Future themeDialog({required RxInt themeIndex}) {
  return Get.dialog(
    Dialog(
      insetPadding: EdgeInsets.symmetric(horizontal: Global.hzPadding),
      backgroundColor: Theme.of(Get.context!).dialogTheme.backgroundColor,
      child: Wrap(
        children: [
          Container(
            width: Get.width,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              children: [
                Text(
                  Strings.selectTheme.tr,
                  style: CommonUi.customTextStyle(
                    fontFamily: AppFonts.medium,
                    fontSize: 22,
                  ),
                ),
                SizedBox(height: 10),
                Obx(
                  () => RadioMenuButton(
                    value: 0,
                    groupValue: themeIndex.value,
                    onChanged: (value) {
                      if (value != null) {
                        Global.hapticFeedback();
                        Get.back();
                        AppTheme.changeTheme(isDark: true);
                        themeIndex.value = value;
                      }
                    },
                    child: Text(
                      Strings.dark.tr,
                      style: CommonUi.customTextStyle(
                        fontSize: AppFontsize.font16,
                        fontFamily: AppFonts.medium,
                      ),
                    ),
                  ),
                ),

                Obx(
                  () => RadioMenuButton(
                    value: 1,
                    groupValue: themeIndex.value,
                    onChanged: (value) {
                      if (value != null) {
                        Global.hapticFeedback();
                        Get.back();
                        AppTheme.changeTheme(isDark: false);
                        themeIndex.value = value;
                      }
                    },
                    child: Text(
                      Strings.light.tr,
                      style: CommonUi.customTextStyle(
                        fontSize: AppFontsize.font16,
                        fontFamily: AppFonts.medium,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
