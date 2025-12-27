import 'package:cpit/common/app_colors.dart';
import 'package:cpit/common/app_fonts.dart';
import 'package:cpit/common/common_ui.dart';
import 'package:cpit/app_constants.dart';
import 'package:cpit/language/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

///
Future uploadImgSheet({
  void Function()? onTapCamera,
  void Function()? onTapGallery,
}) {
  return Get.bottomSheet(
    backgroundColor: Theme.of(Get.context!).bottomSheetTheme.backgroundColor,
    ignoreSafeArea: false,
    SafeArea(
      child: IntrinsicHeight(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              // Camera option
              Container(
                width: 50,
                height: 5,
                decoration: BoxDecoration(
                  color: AppColors.grey.withValues(alpha: 0.5),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              InkWell(
                onTap: () async {
                  AppConstants.hapticFeedback();
                  onTapCamera?.call();
                  // if (await Permission.camera.isGranted) {
                  //   pickImage(source: ImageSource.camera);
                  // } else if (await Permission.camera.isPermanentlyDenied) {
                  //   cameraDialog();
                  // } else {
                  //   await Permission.camera.request();
                  // }
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 5),
                  child: Row(
                    children: [
                      Icon(Icons.camera, size: 28),
                      SizedBox(width: 8),
                      Text(
                        Strings.camera.tr,
                        style: CommonUi.customTextStyle(
                          fontSize: 16,
                          fontFamily: AppFonts.regular,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () async {
                  AppConstants.hapticFeedback();
                  onTapGallery?.call();
                  // if (await Permission.photos.isGranted) {
                  //   pickImage(source: ImageSource.gallery);
                  // } else if (await Permission.photos.isPermanentlyDenied) {
                  //   galleryDialog();
                  // } else {
                  //   await Permission.photos.request();
                  // }
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 10),
                  child: Row(
                    children: [
                      Icon(Icons.image, size: 28),
                      SizedBox(width: 8),
                      Text(
                        Strings.gallery.tr,
                        style: CommonUi.customTextStyle(
                          fontSize: 16,
                          fontFamily: AppFonts.regular,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
