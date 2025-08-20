
import 'package:cpit/common/app_colors.dart';
import 'package:cpit/common/common_ui.dart';
import 'package:cpit/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// A customizable text field with optional label, error handling, and formatting.
Widget customTextField({
  Color fillColor = AppColors.lightGrey,
  double borderRadius = Global.borderRadius,
  Color borderColor = AppColors.focusedCharcoal,
  String labelText = "",
  TextEditingController? controller,
  String? errorText,
  void Function(String)? onChanged,
  List<TextInputFormatter>? inputFormatters,
  TextInputType? keyboardType,
  TextInputAction textInputAction = TextInputAction.next,
  bool readOnly = false,
  void Function()? onTap,
}) {
  return TextField(
    controller: controller,
    onChanged: onChanged,
    onTap: () {
      Global.hapticFeedback();
      onTap?.call();
    },
    keyboardType: keyboardType,

    readOnly: readOnly,
    inputFormatters: inputFormatters,
    textInputAction: textInputAction,
    decoration: InputDecoration(
      fillColor: fillColor,

      errorText: errorText,
      floatingLabelStyle: CommonUi.customTextStyle(
        color: errorText != null ? AppColors.red : AppColors.black,
      ),
      filled: true,
      labelText: labelText.isEmpty ? null : labelText,
      enabledBorder: fieldBorder(
        borderRadius: borderRadius,
        borderColor: borderColor,
      ),
      focusedBorder: fieldBorder(
        borderRadius: borderRadius,
        borderColor: borderColor,
      ),
      errorBorder: fieldBorder(
        borderRadius: borderRadius,
        borderColor: Colors.red,
      ),
      focusedErrorBorder: fieldBorder(
        borderRadius: borderRadius,
        borderColor: Colors.red,
      ),
    ),
  );
}

OutlineInputBorder fieldBorder({
  required double borderRadius,
  required Color borderColor,
}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(borderRadius),
    borderSide: BorderSide(color: borderColor),
  );
}

