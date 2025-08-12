import 'package:cpit/common/app_images.dart';
import 'package:cpit/common/common_ui.dart';
import 'package:cpit/common/custom_appbar.dart';
import 'package:cpit/pages/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

/// This widget is the view for the Splash screen.
class SplashView extends StatelessWidget {
  SplashView({super.key});

  final controller = Get.find<SplashController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: customAppBar(toolbarHeight: 0),
        body: Center(
          child: WidgetAnimator(
            incomingEffect: WidgetTransitionEffects.incomingScaleUp(
              duration: const Duration(milliseconds: 1800),
              curve: Curves.easeInOut,
            ),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: CommonUi.setPng(AppImages.pngCpit),
            ),
          ),
        ),
      ),
    );
  }
}
