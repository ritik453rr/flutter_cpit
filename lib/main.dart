import 'package:cpit/common/app_colors.dart';
import 'package:cpit/common/app_storage.dart';
import 'package:cpit/language/app_language.dart';
import 'package:cpit/routing/app_pages.dart';
import 'package:cpit/routing/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: AppPages.pages,
      initialRoute: AppRoutes.splash,
      translations: AppLanguage(),
      locale: Locale(
        AppStorage.getLangCode(),
        AppStorage.countryCode,
      ), // Default locale
      fallbackLocale: Locale(
        AppStorage.getLangCode(),
        AppStorage.countryCode,
      ), // Fallback if device locale not supported

      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.white,
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: AppColors.black,
          selectionColor: AppColors.black.withValues(alpha: 0.15),
          selectionHandleColor: AppColors.black,
        ),
      ),
    );
  }
}
