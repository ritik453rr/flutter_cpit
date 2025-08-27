import 'package:cpit/common/app_images.dart';
import 'package:cpit/common/custom_appbar.dart';
import 'package:cpit/common/custom_textfield.dart';
import 'package:cpit/global.dart';
import 'package:cpit/language/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// A stateless widget that displays the Home screen with a custom app bar.
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        Global.hideKeyBoard();
      },
      child: Scaffold(
        appBar: customAppBar(
          title: Strings.dashTitle.tr,
          centerTitle: false,
          actionIcon1: AppImages.iconFilter,
        ),
        body: Container(
          width: Get.width,
          padding: EdgeInsets.symmetric(horizontal: Global.hzPadding),
          child: Column(
            children: [
              SizedBox(height: 10),
              customTextField(
                hideBorder: true,
                hintText: "${Strings.search.tr}...",
                prefixIcon: AppImages.iconSearch,
              ),
              SizedBox(height: 1),
              Expanded(
                child: ListView.builder(
                  itemCount: 20,
                  shrinkWrap: true,
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  itemBuilder: (context, index) {
                    return Card(
                      margin: EdgeInsets.only(bottom: 12),
                      child: Container(
                        width: Get.width,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
