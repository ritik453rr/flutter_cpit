import 'package:cpit/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// A customizable text field with optional label, error handling, and formatting.
Widget customTextField({
  Color? fillColor,
  double borderRadius = Global.borderRadius,
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

      filled: true,
      labelText: labelText.isEmpty ? null : labelText,
    ),
  );
}
