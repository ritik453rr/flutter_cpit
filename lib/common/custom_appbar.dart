import 'package:cpit/common/app_colors.dart';
import 'package:cpit/common/app_fonts.dart';
import 'package:cpit/common/app_theme.dart';
import 'package:cpit/common/common_ui.dart';
import 'package:cpit/global.dart';
import 'package:flutter/material.dart';

/// Returns a customizable AppBar with optional height and background color.
PreferredSizeWidget? customAppBar({
  String title = "",
  bool centerTitle = true,
  IconData? actionIcon1,
  void Function()? onTapAction1,
}) {
  return AppBar(
    centerTitle: centerTitle,
    actionsPadding: EdgeInsets.only(right: Global.hzPadding),
    shape: Border(
      bottom: BorderSide(color: AppColors.grey.withValues(alpha: 0.4)),
    ),
    title:
        title.isEmpty
            ? null
            : Text(
              title,
              style: CommonUi.customTextStyle(
                fontSize: 24,
                fontFamily: AppFonts.medium,
              ),
            ),
    actions: [
      actionIcon1 == null
          ? SizedBox()
          : IconButton(
            visualDensity: VisualDensity.compact,
            padding: EdgeInsets.zero,
            onPressed: () {
              Global.hapticFeedback();
              onTapAction1?.call();
            },

            icon: Icon(actionIcon1),
          ),

     
    ],
  );
}
