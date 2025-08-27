import 'package:cpit/common/app_colors.dart';
import 'package:cpit/common/app_fontsize.dart';
import 'package:cpit/common/app_storage.dart';
import 'package:cpit/common/common_ui.dart';
import 'package:cpit/common/restart_app.dart';
import 'package:cpit/global.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// Provides app-wide theme data and theme switching functionality.
class AppTheme {
  /// Method to change app theme.
  static void changeTheme({required bool isDark}) {
    Global.setSafeArea(isDark: isDark);
    AppStorage.setThemeMode(isDark: isDark);
    RestartApp.restartApp(Get.context!);
  }

  /// Returns the light theme configuration.
  static ThemeData lightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: AppColors.ltSplash,
      cardColor: AppColors.ltTile,
      dialogTheme: DialogThemeData(backgroundColor: AppColors.ltDialog),
      scaffoldBackgroundColor: AppColors.white,
      splashColor: Colors.transparent,
      cardTheme: CardTheme(color: AppColors.ltCardColor),

      textSelectionTheme: TextSelectionThemeData(
        cursorColor: AppColors.ltCursor,
        selectionHandleColor: AppColors.ltSelectionHandle,
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.all<Color>(AppColors.black),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: AppColors.white,
        selectedItemColor: AppColors.black,
        unselectedItemColor: Colors.grey[500],
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.white,
        foregroundColor: AppColors.white,
        surfaceTintColor: AppColors.white,
        titleTextStyle: CommonUi.customTextStyle(color: AppColors.black),
        actionsIconTheme: IconThemeData(color: AppColors.black),
      ),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: AppColors.black),
        bodyMedium: TextStyle(color: AppColors.black),
      ),

      iconTheme: IconThemeData(color: AppColors.black),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.ltFieldColor,
        prefixIconColor: AppColors.ltFieldIcon,
        hintStyle: TextStyle(color: AppColors.ltFieldHint),
        labelStyle: TextStyle(color: AppColors.ltFieldLabel),
        errorStyle: CommonUi.customTextStyle(color: AppColors.ltFieldErrorBord),
        floatingLabelStyle: const TextStyle(color: AppColors.ltFloatingLabel),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.ltFieldEnableBorder),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.ltFieldFocusBorder),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.ltFieldErrorBord),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.ltFieldErrorBord, width: 2),
        ),
      ),
    );
  }

  /// Returns the dark theme configuration.
  static ThemeData darkTheme() {
    return ThemeData(
      brightness: Brightness.dark,
      cardColor: AppColors.dtTile,
      primaryColor: AppColors.dtSplash,
      scaffoldBackgroundColor: AppColors.black,
      splashFactory: InkRipple.splashFactory,
      splashColor: Colors.transparent,
      cardTheme: CardTheme(color: AppColors.dtCardColor),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: AppColors.dtCursor,
        selectionHandleColor: AppColors.dtSelectionHandle,
      ),
      dialogTheme: DialogThemeData(backgroundColor: AppColors.dtDialog),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.all<Color>(AppColors.white),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.black,
        foregroundColor: AppColors.black,
        surfaceTintColor: AppColors.black,
        titleTextStyle: CommonUi.customTextStyle(color: AppColors.white),
        actionsIconTheme: IconThemeData(color: AppColors.white),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: AppColors.black,
        selectedItemColor: AppColors.white,
        unselectedItemColor: AppColors.dtUnselectNav,
      ),

      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: AppColors.white),
        bodyMedium: TextStyle(color: AppColors.white),
      ),

      iconTheme: IconThemeData(color: AppColors.white),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        errorStyle: TextStyle(color: Colors.redAccent),
        fillColor: AppColors.dtField,
        hintStyle: TextStyle(color: AppColors.dtFieldHint),
        labelStyle: const TextStyle(color: Colors.white70),
        floatingLabelStyle: const TextStyle(color: Colors.white70),
        prefixIconColor: AppColors.dtFieldIcon,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.dtEnableBorder),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.dtEnableBorder),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 2),
        ),
      ),
    );
  }
}
