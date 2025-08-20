import 'package:flutter/material.dart';

/// Returns a customizable AppBar with optional height and background color.
PreferredSizeWidget? customAppBar({double? toolbarHeight,Color? backgroundColor}) {
  return AppBar(
    toolbarHeight:toolbarHeight ,
    backgroundColor: backgroundColor,
  );
}
