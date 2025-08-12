import 'package:cpit/pages/login/login_binding.dart';
import 'package:cpit/pages/login/login_view.dart';
import 'package:cpit/pages/splash/splash_binding.dart';
import 'package:cpit/pages/splash/splash_view.dart';
import 'package:cpit/routing/app_routes.dart';
import 'package:get/get.dart';

/// This class defines the application pages used in the app.
class AppPages {
  static final pages = [
    GetPage(
      name:AppRoutes.splash,
      page: ()=>SplashView(),
      binding: SplashBinding()
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => const LoginView(),
      binding: LoginBinding()
    ),
  ];

}
