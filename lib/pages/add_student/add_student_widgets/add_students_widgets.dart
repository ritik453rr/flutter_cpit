import 'package:cpit/common/app_fonts.dart';
import 'package:cpit/common/app_fontsize.dart';
import 'package:cpit/common/common_ui.dart';
import 'package:cpit/common/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Custom Text Field Widget
Widget textField({
  required String name,
  required String hintText,
  required TextEditingController controller,
   TextInputAction textInputAction=TextInputAction.next,
  TextInputType keyboardType=TextInputType.text,
  TextCapitalization textCapitalization = TextCapitalization.none,
  Widget? prefix,
  List<TextInputFormatter>? inputFormatters,
  bool readOnly = false,
  IconData? suffixIcon,
  void Function()? onTap,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        name,
        style: CommonUi.customTextStyle(
          fontSize: AppFontsize.font16,
          fontFamily: AppFonts.medium,
        ),
      ),

      Padding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: customTextField(
          controller: controller,
          readOnly: readOnly,
          suffixIcon: suffixIcon,
          textInputAction: textInputAction,
          keyboardType: keyboardType,
          textCapitalization: textCapitalization,
          hintText: hintText,
          inputFormatters: inputFormatters,
          onTap: onTap,
        ),
      ),
    ],
  );
}
