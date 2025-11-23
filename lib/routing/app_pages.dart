import 'package:cpit/pages/dashboard/add_student/add_student_binding.dart';
import 'package:cpit/pages/dashboard/add_student/add_student_view.dart';
import 'package:cpit/pages/dashboard/dashboard_main/dashboard_binding.dart';
import 'package:cpit/pages/dashboard/dashboard_main/dashboard_view.dart';
import 'package:cpit/pages/dashboard/home/home_binding.dart';
import 'package:cpit/pages/dashboard/settings/settings_binding.dart';
import 'package:cpit/pages/dashboard/student_detail/student_binding.dart';
import 'package:cpit/pages/dashboard/student_detail/student_detail_view.dart';
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
      name: AppRoutes.splash,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.dashboard,
      page: () => DashboardView(),
      bindings: [DashboardBinding(), HomeBinding(), SettingsBinding()],
    ),
    GetPage(
      name: AppRoutes.addStudent,
      page: () => AddStudentView(),
      binding: AddStudentBinding(),
    ),
    GetPage(
      name: AppRoutes.studentDetail,
      page: () => StudentDetailView(),
      binding: StudentBinding(),
    ),
  ];
}
