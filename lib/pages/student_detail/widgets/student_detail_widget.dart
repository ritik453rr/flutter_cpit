import 'package:cpit/common/app_fonts.dart';
import 'package:cpit/common/app_fontsize.dart';
import 'package:cpit/common/common_ui.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// EXACT COPY OF THE STYLE OF Add Student TEXTFIELDS (but read only)
Widget detailField({required String title, required String value}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: CommonUi.customTextStyle(
          fontSize: AppFontsize.font16,
          fontFamily: AppFonts.medium,
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Get.theme.inputDecorationTheme.fillColor,
            border: Border.all(
              color:
                  Get
                      .theme
                      .inputDecorationTheme
                      .enabledBorder!
                      .borderSide
                      .color,
            ),
          ),
          child: Text(
            value.isEmpty ? "-" : value,
            style: CommonUi.customTextStyle(
              fontFamily: AppFonts.regular,
              fontSize: AppFontsize.font16,
            ),
          ),
        ),
      ),
    ],
  );
}
