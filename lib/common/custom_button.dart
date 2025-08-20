import 'package:cpit/common/app_colors.dart';
import 'package:cpit/common/app_fonts.dart';
import 'package:cpit/common/common_ui.dart';
import 'package:cpit/global.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// A customizable button with loading state and haptic feedback support.
Widget customButton({
  double? height,
  double? width,
  String title = "Title",
  Color bgColor = Colors.blue,
  Color titleColor = AppColors.white,
  double borderRadius = Global.borderRadius,
  void Function()? onPressed,
  required RxBool isLoading,
}) {
  return SizedBox(
    height: height,
    width: width,
    child: ElevatedButton(
      onPressed: () {
        Global.hapticFeedback();
        onPressed?.call();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      child: Obx(
        () =>
            isLoading.value
                ? CommonUi.loadinIndicator()
                : Text(
                  title,
                  style: CommonUi.customTextStyle(
                    color: titleColor,
                    fontFamily: AppFonts.semibold,
                  ),
                ),
      ),
    ),
  );
}
