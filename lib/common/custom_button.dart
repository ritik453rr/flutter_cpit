import 'package:cpit/common/app_colors.dart';
import 'package:cpit/common/app_fonts.dart';
import 'package:cpit/common/common_ui.dart';
import 'package:cpit/global.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

///
Widget customButton({
  double? height,
  double? width,
  String title = "Title",
  Color bgColor = Colors.blue,
  Color titleColor = AppColors.white,
  double borderRadius = 12,
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
                ? SizedBox(
                  height: 28,
                  width: 28,
                  child: CircularProgressIndicator(
                    color: AppColors.white,
                    strokeWidth: 2.5,
                  ),
                )
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
