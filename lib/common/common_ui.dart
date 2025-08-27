import 'package:cpit/common/app_colors.dart' show AppColors;
import 'package:cpit/common/app_fonts.dart';
import 'package:cpit/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// A utility class for setting common UI components like images and text styles.
class CommonUi {
  static Widget setPng(
    String imgName, {
    Color? color,
    double? width,
    double? height,
    BoxFit? fit,
  }) {
    return Image.asset(
      'assets/images/pngs/$imgName.png',
      width: width,
      height: height,
      fit: fit,
      color: color,
    );
  }

  /// Set SVG image
  static Widget setSvgImg(
    String imgName, {
    Color? color,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
  }) {
    return SvgPicture.asset(
      'assets/images/svgs/$imgName.svg',
      fit: fit,
      color: color,
      width: width,
      height: height,
    );
  }

  /// Custom Text Style
  static TextStyle? customTextStyle({
    Color? color,
    double fontSize = 14,
    String fontFamily = AppFonts.regular,
  }) {
    return TextStyle(fontFamily: fontFamily, color: color, fontSize: fontSize);
  }


/// Method to return round border decoration
  static BoxDecoration roundDecoration({Color? color,double borderRadius=12}) {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(borderRadius)
    );
  }

  /// Custom TextButton
  static Widget textButton({
    required String title,
    void Function()? onPressed,
    double  borderRadius=12.0,
  }) {
    return TextButton(
      style: TextButton.styleFrom(
        visualDensity: VisualDensity.compact,
        padding: EdgeInsets.only(right: 0, left: 6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),

        overlayColor: Colors.grey.withValues(alpha: 0.1),
        surfaceTintColor: Colors.grey.withValues(alpha: 0.1),
      ),
      onPressed: () {
        Global.hapticFeedback();
        onPressed?.call();
      },
      child: Text(
        title,
        style: CommonUi.customTextStyle(
          color: AppColors.blue,
          fontFamily: AppFonts.medium,
        ),
      ),
    );
  }

  /// Returns a customizable loading spinner widget.
  static Widget loadinIndicator({
    double height = 25,
    double width = 25,
    double strokeWidth = 2,
    Color color = AppColors.white,
  }) {
    return SizedBox(
      height: height,
      width: width,
      child: CircularProgressIndicator(color: color, strokeWidth: strokeWidth),
    );
  }
}
