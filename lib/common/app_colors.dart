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

  /// Dark Theme Colors
  static const Color dtEnableBorder = Colors.white38;
  static const Color dtFocusBorder = Colors.white60;
  static Color dtFillColor = Colors.grey.shade900;
  static const Color dtSplash = Colors.white10;
  static Color dtTile = Colors.grey.withValues(alpha: 0.09);
  static Color dtDialog = Colors.grey.shade900;
  static  Color dtUnselectNav = Colors.grey[600]!;

  ///Light Theme
  static Color ltFillColor = Colors.grey.shade200;
  static const ltTextFieldLabel = Colors.black87;
  static Color ltEnableBorder = Colors.grey.shade300;
  static Color ltFocusBorder = Colors.grey.shade400;
  static const ltSplash = Colors.black12;
  static Color ltTile = Colors.grey[200]!;
}
