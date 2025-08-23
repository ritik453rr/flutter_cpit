import 'package:cpit/common/custom_appbar.dart';
import 'package:cpit/language/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// A stateless widget that displays the Home screen with a custom app bar.
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: Strings.dashTitle.tr),
      body: Center(child: Text("Home")),
    );
  }
}
