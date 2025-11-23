import 'package:cpit/common/app_fonts.dart';
import 'package:cpit/common/common_ui.dart';
import 'package:cpit/common/custom_button.dart';
import 'package:cpit/common/custom_textfield.dart';
import 'package:cpit/global.dart';
import 'package:cpit/language/strings.dart';
import 'package:cpit/pages/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// A stateless widget representing the login screen with input fields and login button.
class LoginView extends StatelessWidget {
  LoginView({super.key});
  final controller = Get.find<LoginController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        Global.hideKeyBoard();
      },

      child: Scaffold(
        body: SafeArea(
          child: Container(
            height: Get.height,
            padding: EdgeInsets.symmetric(horizontal: Global.hzPadding),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 150),
                  Text(
                    Strings.splashTitle.tr,
                    style: CommonUi.customTextStyle(
                      fontFamily: AppFonts.medium,
                      fontSize: 28,
                    ),
                  ),
                  SizedBox(height: 30),
                  Obx(
                    () => customTextField(
                      controller: controller.emailController,
                      labelText: Strings.email.tr,
                      readOnly: controller.isLoading.value,
                      keyboardType: TextInputType.emailAddress,
                      errorText: controller.emailError.value,
                      onChanged: (val) {
                        controller.onChangeEmail(val);
                      },
                    ),
                  ),
                  SizedBox(height: 25),
                  Obx(
                    () => customTextField(
                      controller: controller.passwordController,
                      readOnly: controller.isLoading.value,
                      textInputAction: TextInputAction.done,
                      labelText: Strings.password.tr,
                      errorText: controller.passwordError.value,
                      onChanged: (val) {
                        controller.onChangePass(val);
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: CommonUi.textButton(
                      title: Strings.forgotPassword.tr,
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(height: 25),
                  customButton(
                    width: Get.width,
                    height: 50,
                    isLoading: controller.isLoading,
                    title: Strings.login.tr,
                    onPressed: () {
                      controller.login();
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
