import 'package:cpit/common/app_colors.dart';
import 'package:cpit/common/app_images.dart';
import 'package:cpit/pages/dashboard/dashboard_main/dashboard_controller.dart';
import 'package:cpit/pages/dashboard/dashboard_main/widgets/dashboard_widgets.dart';
import 'package:cpit/pages/dashboard/home/home_view.dart';
import 'package:cpit/pages/dashboard/settings/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// A stateless widget that manages the main dashboard layout with bottom navigation.
class DashboardView extends StatelessWidget {
  DashboardView({super.key});
  final controller = Get.find<DashboardController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColors.grey.withValues(alpha: 0.4),
              blurRadius: 3,
            ),
          ],
        ),
        child: Obx(
          () => BottomNavigationBar(
            selectedLabelStyle: TextStyle(fontSize: 0),
            unselectedLabelStyle: TextStyle(fontSize: 0),
            currentIndex: controller.currentIndex.value,
            onTap: (index) {
              controller.onTapNav(index);
            },
            items: [
              bottomNavItem(),
              bottomNavItem(icon: AppImages.iconSettings),
            ],
          ),
        ),
      ),
      body: Obx(
        () => IndexedStack(
          index: controller.currentIndex.value,
          children:[HomeView(), SettingsView()],
        ),
      ),
    );
  }
}
