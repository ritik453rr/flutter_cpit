import 'package:cpit/common/app_images.dart';
import 'package:flutter/material.dart';

/// Common bottom nav item
bottomNavItem({IconData icon = AppImages.iconHome}) {
  return BottomNavigationBarItem(icon: Icon(icon, size: 26), label: "");
}
