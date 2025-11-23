import 'package:cpit/common/app_colors.dart';
import 'package:cpit/common/app_fonts.dart';
import 'package:cpit/common/app_fontsize.dart';
import 'package:cpit/common/common_ui.dart';
import 'package:cpit/global.dart';
import 'package:cpit/language/strings.dart';
import 'package:cpit/model/student_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// A widget that displays user information in a card format.
Widget userCard({required StudentModel student, void Function()? onTap}) {
  return Card(
    margin: EdgeInsets.only(bottom: 12),
    child: InkWell(
      splashColor: Theme.of(Get.context!).primaryColor,
      borderRadius: BorderRadius.circular(Global.radius),
      onTap: () {
        Global.hapticFeedback();
        onTap?.call();
      },
      child: Container(
        width: Get.width,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: CommonUi.roundDecoration(),
        child: Row(
          children: [
            CommonUi.networkImg(imgUrl: student.imgUrl, borderRadius: 8),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  labelRow(
                    key: Strings.name.tr,
                    value: student.name,
                    fontFamily: AppFonts.medium,
                    fontSize: AppFontsize.font16,
                  ),
                  labelRow(
                    key: Strings.id.tr,
                    value: student.id,
                    color: AppColors.grey,
                  ),
                  labelRow(
                    key: Strings.email.tr,
                    value: student.email,
                    color: AppColors.grey,
                  ),
                  labelRow(
                    key: Strings.phone.tr,
                    value: student.phone,
                    color: AppColors.grey,
                  ),
                  labelRow(
                    key: Strings.add.tr,
                    value: student.address,
                    color: AppColors.grey,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

/// A widget that displays a key-value pair in a labeled row format.
Widget labelRow({
  required String key,
  required String value,
  bool isLast = false,
  double fontSize = AppFontsize.font14,
  Color? color,
  String fontFamily = AppFonts.regular,
}) {
  return Padding(
    padding: EdgeInsets.only(bottom: isLast ? 0 : 5),
    child: Text(
      "$key : $value",
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: CommonUi.customTextStyle(
        fontSize: fontSize,
        fontFamily: fontFamily,
        color: color,
      ),
    ),
  );
}
