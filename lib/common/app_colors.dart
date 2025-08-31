import 'package:flutter/material.dart';

/// This class defines the colors used in the application.
class AppColors {
  static const Color white = Color.fromRGBO(255, 255, 255, 1.0);
  static const Color black = Color.fromRGBO(0, 0, 0, 1.0);
  static const Color mediumGrey = Color.fromRGBO(128, 128, 128, 1.0);
  static const Color grey = Colors.grey;
  static const Color lightGrey = Color.fromRGBO(245, 245, 245, 1.0);
  static const Color borderGrey = Color.fromRGBO(200, 200, 200, 1.0);
  static const Color focusedCharcoal = Color.fromRGBO(112, 112, 112, 1.0);
  static const Color blue = Colors.blue;
  static const Color red = Colors.red;
  static const Color unselectIcon = Color.fromRGBO(204, 204, 204, 1);
  static const Color shimmerBase = Color.fromRGBO(
    160,
    160,
    160,
    1.0,
  ); // medium-dark grey
  static const Color shimmerHighlight = Color.fromRGBO(200, 200, 200, 1.0);

  /// Dark Theme Colors
  static const Color dtEnableBorder = Colors.white38;
  static const Color dtFocusBorder = Colors.white60;
  static Color dtField = Colors.grey.shade900;
  static const Color dtSplash = Colors.white10;
  static Color dtTile = Colors.grey.withValues(alpha: 0.09);
  static Color dtDialog = Colors.grey.shade900;
  static Color dtUnselectNav = Colors.grey[600]!;
  static const Color dtFieldIcon = Colors.grey;
  static const Color dtFieldHint = Colors.white54;
  static const Color dtCursor = AppColors.white;
  static Color dtSelectionHandle = Colors.grey[700]!;
  static Color dtCardColor = Colors.grey.shade900;
  static Color dtFloatingBtnBg = Colors.grey[800]!;
  static const dtFloatingBtnIcon = AppColors.white;

  ///Light Theme
  static Color ltFieldColor = Colors.grey.shade200;
  static const ltFieldLabel = Colors.black87;
  static Color ltFieldEnableBorder = Colors.grey.shade300;
  static Color ltFieldFocusBorder = Colors.grey.shade400;
  static const ltSplash = Colors.black12;
  static Color ltTile = Colors.grey[200]!;
  static const ltFieldErrorBord = AppColors.red;
  static const ltFloatingLabel = AppColors.black;
  static const ltFieldErrorBorder = Colors.red;
  static const ltFieldIcon = Colors.black38;
  static Color ltFieldHint = Colors.grey[800]!;
  static const ltCursor = AppColors.black;
  static const ltSelectionHandle = AppColors.black;
  static const ltDialog = AppColors.white;
  static Color ltCardColor = Colors.grey.shade200;
  static Color ltFloatingBtnBg = Colors.grey[500]!;
  static const ltFloatingBtnIcon = AppColors.white;
}
