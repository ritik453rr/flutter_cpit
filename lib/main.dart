import 'package:cpit/common/app_storage.dart';
import 'package:cpit/common/app_theme.dart';
import 'package:cpit/common/restart_app.dart';
import 'package:cpit/global.dart';
import 'package:cpit/language/app_language.dart';
import 'package:cpit/routing/app_pages.dart';
import 'package:cpit/routing/app_routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async { 
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  await Firebase.initializeApp();
  Global.setSafeArea(isDark: AppStorage.isDarkTheme());
  runApp(RestartApp(child: const MyApp()));
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
        AppStorage.getCountryCode(),
      ), // Default locale
      fallbackLocale: Locale(
        AppStorage.getLangCode(),
        AppStorage.getCountryCode(),
      ), // Fallback if device locale not supported
      theme: AppTheme.lightTheme(),
      darkTheme: AppTheme.darkTheme(),
      themeMode: AppStorage.isDarkTheme() ? ThemeMode.dark : ThemeMode.light,
    );
  }
}
