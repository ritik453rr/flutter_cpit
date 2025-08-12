import 'package:cpit/common/app_colors.dart';
import 'package:cpit/language/app_language.dart';
import 'package:cpit/routing/app_pages.dart';
import 'package:cpit/routing/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.white,
          surfaceTintColor: AppColors.white,
        ),
      ),
      translations: AppLanguage(),
      locale: const Locale('en', 'US'), // Set default locale
      getPages: AppPages.pages,
      initialRoute: AppRoutes.splash,
    );
  }
}
