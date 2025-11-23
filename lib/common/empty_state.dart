import 'package:cpit/common/app_colors.dart';
import 'package:flutter/material.dart';

/// A widget that displays an empty state with an icon and message.
Widget emptyState({
  required IconData icon,
  required String title,
  required String subtitle,
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, size: 100, color: AppColors.subtleGrey),
      Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: AppColors.midGray,
        ),
      ),
      SizedBox(height: 8),
      Text(
        subtitle,
        style: TextStyle(fontSize: 14, color: AppColors.nuetralGray),
        textAlign: TextAlign.center,
      ),
    ],
  );
}
