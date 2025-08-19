import 'package:cpit/common/app_colors.dart';
import 'package:cpit/common/app_fontsize.dart';
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
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: customAppBar(toolbarHeight: 0, backgroundColor: AppColors.black),
      body: Center(
        child: WidgetAnimator(
          incomingEffect: WidgetTransitionEffects.incomingScaleUp(
            duration: const Duration(milliseconds: 1800),
            curve: Curves.easeInOut,
          ),
          child: Text(
            "CPIT EDUCATION",
            style: CommonUi.customTextStyle(
              color: AppColors.white,
              fontSize: AppFontsize.font30,
            ),
          ),
        ),
      ),
    );
  }
}
