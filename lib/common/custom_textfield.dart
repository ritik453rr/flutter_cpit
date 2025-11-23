import 'package:cpit/common/app_fontsize.dart';
import 'package:cpit/common/common_ui.dart';
import 'package:cpit/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// A customizable text field with optional label, error handling, and formatting.
Widget customTextField({
  Color? fillColor,
  Color? borderColor,
  String labelText = "",
  TextEditingController? controller,
  String? errorText,
  void Function(String)? onChanged,
  List<TextInputFormatter>? inputFormatters,
  TextInputType? keyboardType,
  TextInputAction textInputAction = TextInputAction.next,
  bool readOnly = false,
  void Function()? onTap,
  double fieldRadius = Global.fieldRadius,
  bool hideBorder = false,
  IconData? prefixIcon,
  String? hintText,
  double errorFontSize = AppFontsize.font12,
  double contentHzPadding = 16,
  double contentVtPadding = 14,
  TextCapitalization textCapitalization = TextCapitalization.none,
  IconData? suffixIcon,
}) {
  return TextField(
    controller: controller,
    onChanged: onChanged,
    textCapitalization: textCapitalization,

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
      hintText: hintText,
      suffixIcon: Icon(suffixIcon),

      contentPadding: EdgeInsets.symmetric(
        horizontal: contentHzPadding,
        vertical: contentVtPadding,
      ),
      errorStyle: CommonUi.customTextStyle(fontSize: errorFontSize),
      prefixIcon:
          prefixIcon == null
              ? null
              : Padding(
                padding: EdgeInsets.only(left: 12, right: 2),
                child: Icon(prefixIcon, size: 30),
              ),
      labelText: labelText.isEmpty ? null : labelText,
      enabledBorder:
          hideBorder
              ? OutlineInputBorder(
                borderRadius: BorderRadius.circular(fieldRadius),
                borderSide: BorderSide.none,
              )
              : null,
      focusedBorder:
          hideBorder
              ? OutlineInputBorder(
                borderRadius: BorderRadius.circular(fieldRadius),
                borderSide: BorderSide.none,
              )
              : null,
    ),
  );
}
