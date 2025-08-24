import 'package:cpit/common/app_fonts.dart';
import 'package:cpit/common/app_fontsize.dart';
import 'package:cpit/common/common_ui.dart';
import 'package:cpit/global.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// Setting Widget to create setting item
Widget settingItem({
  required IconData icon,
  required String title,
  required IconData suffixIcon,
  bool isLast = false,
}) {
  return InkWell(
    // splashColor: Colors.red,

    // highlightColor: Colors.red,
    onTap: () {
      Global.hapticFeedback();
    },
    child: Container(
      padding: EdgeInsets.all(14),
      margin: EdgeInsets.only(bottom: isLast ? 0 : 20),
      decoration: CommonUi.roundDecoration(
        color: Theme.of(Get.context!).cardColor,
      ),
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
  );
}
