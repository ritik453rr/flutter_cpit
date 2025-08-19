import 'package:cpit/common/app_colors.dart';
import 'package:cpit/common/common_ui.dart';
import 'package:cpit/common/custom_appbar.dart';
import 'package:cpit/common/custom_button.dart';
import 'package:cpit/common/custom_textfield.dart';
import 'package:cpit/global.dart';
import 'package:cpit/language/strings.dart';
import 'package:cpit/pages/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// Login view
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
        appBar: customAppBar(toolbarHeight: 0),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: Global.hzPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                Strings.cpitEducation.tr,
                style: CommonUi.customTextStyle(
                  color: AppColors.black,
                  fontSize: 28,
                ),
              ),
              SizedBox(height: 25),
              Obx(
                () => customTextField(
                  controller: controller.emailController,
                  labelText: Strings.email.tr,
                  inputFormatters: [NoTrailingSpaceFormatter()],
                  errorText: controller.emailError.value,
                  onChanged: (val) {
                    controller.onChangeEmail(val);
                  },
                ),
              ),
              SizedBox(height: 20),
              Obx(
                () => customTextField(
                  controller: controller.passwordController,
                  labelText: Strings.password.tr,
                  onChanged: (val) {
                    controller.onChangePass(val);
                  },
                  errorText: controller.passwordError.value,
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  Strings.forgotPassword.tr,
                  style: CommonUi.customTextStyle(color: AppColors.blue),
                ),
              ),
              SizedBox(height: 20),
              customButton(
                width: Get.width,
                height: 50,
                isLoading: controller.isLoading,
                onPressed: () {
                  controller.login();
                },
                title: Strings.login.tr,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
