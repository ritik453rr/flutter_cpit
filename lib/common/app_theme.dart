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
  /// Toggles the app theme between light and dark modes.
  static void changeTheme() {
    final isDark = AppStorage.isDarkTheme();
    final newIsDark = !isDark;
    Global.setSafeArea(isDark: newIsDark);
    AppStorage.setThemeMode(isDark: newIsDark);
    Get.changeThemeMode(newIsDark ? ThemeMode.dark : ThemeMode.light);
    RestartApp.restartApp(Get.context!);
  }

  /// Returns the light theme configuration.
  static ThemeData lightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      cardColor: Colors.grey[200],
      scaffoldBackgroundColor: AppColors.white,
      // splashFactory: NoSplash.splashFactory,
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
        bodyLarge: TextStyle(color: Colors.black),
        bodyMedium: TextStyle(color: Colors.black),
      ),

      iconTheme: IconThemeData(color: Colors.black),

      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.ltFillColor,
        labelStyle: TextStyle(color: AppColors.ltTextFieldLabel),
        errorStyle: CommonUi.customTextStyle(
          color: AppColors.red,
          fontSize: AppFontsize.font12,
        ),
        floatingLabelStyle: const TextStyle(color: AppColors.black),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.ltEnableBorder),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.ltFocusBorder),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.red, width: 2),
        ),
      ),
    );
  }

  /// Returns the dark theme configuration.
  static ThemeData darkTheme() {
    return ThemeData(
      brightness: Brightness.dark,
      cardColor: Colors.grey.withValues(alpha: 0.09),

      scaffoldBackgroundColor: Colors.black,
      splashFactory: NoSplash.splashFactory,
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
        unselectedItemColor: Colors.grey[600],
      ),

      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: Colors.white),
        bodyMedium: TextStyle(color: Colors.white),
      ),

      iconTheme: IconThemeData(color: Colors.white),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        errorStyle: TextStyle(color: Colors.redAccent),
        fillColor: AppColors.dtFillColor,
        labelStyle: const TextStyle(color: Colors.white70),
        floatingLabelStyle: const TextStyle(color: Colors.white70),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.dtEnableBorder),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: AppColors.dtFocusBorder,
            width: 2,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.red, width: 2),
        ),
      ),
    );
  }
}
