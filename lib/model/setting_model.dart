import 'package:flutter/widgets.dart';

/// Settings model to create settings item.
class SettingModel {
  IconData icon;
  String title;
  IconData suffixIcon;

  SettingModel({
    required this.icon,
    required this.title,
    required this.suffixIcon,
  });
}
