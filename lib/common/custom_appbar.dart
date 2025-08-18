import 'package:flutter/material.dart';

/// Custom AppBar widget
PreferredSizeWidget? customAppBar({double? toolbarHeight,Color? backgroundColor}) {
  return AppBar(
    toolbarHeight:toolbarHeight ,
    backgroundColor: backgroundColor,
  );
}
