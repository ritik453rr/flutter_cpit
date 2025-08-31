import 'package:cpit/common/app_fonts.dart';
import 'package:cpit/common/app_fontsize.dart';
import 'package:cpit/common/common_ui.dart';
import 'package:cpit/global.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


/// Setting Widget to create setting item with tap effect color
Widget settingItem({
  required IconData icon,
  required String title,
  required IconData suffixIcon,
  bool isLast = false,
  void Function()? onTap,
}) {
  return Padding(
    padding: EdgeInsets.only(bottom: isLast ? 0 : 20),
    child: Material(
      color: Theme.of(Get.context!).cardColor,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        splashColor: Theme.of(Get.context!).primaryColor,
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          Global.hapticFeedback();
          onTap?.call();
        },
        child: Container(
          padding: EdgeInsets.all(14),
          decoration: CommonUi.roundDecoration(color: Colors.transparent),
          child: Row(
            children: [
              Icon(icon),
              SizedBox(width: 10),
              Text(
                title,
                style: CommonUi.customTextStyle(
                  fontFamily: AppFonts.medium,
                  fontSize: AppFontsize.font16,
                ),
              ),
              Spacer(),
              Icon(suffixIcon, size: 18),
            ],
          ),
        ),
      ),
    ),
  );
}

