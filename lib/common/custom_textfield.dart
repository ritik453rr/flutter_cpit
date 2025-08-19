import 'package:cpit/common/app_colors.dart';
import 'package:cpit/common/common_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Custom textfield
Widget customTextField({
  Color fillColor = AppColors.lightGrey,
  double borderRadius = 10,
  Color borderColor = AppColors.focusedCharcoal,
  String labelText = "",
  TextEditingController? controller,
  String? errorText,
  void Function(String)? onChanged,
  List<TextInputFormatter>? inputFormatters,
}) {
  return TextField(
    controller: controller,
    onChanged: onChanged,
    inputFormatters:inputFormatters,
    decoration: InputDecoration(
      fillColor: fillColor,
      errorText: errorText,
      filled: true,
      label:
          labelText.isNotEmpty
              ? Text(labelText, style: CommonUi.customTextStyle(fontSize: 16))
              : null,
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

class NoTrailingSpaceFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final trimmed = newValue.text.replaceAll(RegExp(r'\s+$'), '');
    return newValue.copyWith(
      text: trimmed,
      selection: TextSelection.collapsed(offset: trimmed.length),
    );
  }
}
