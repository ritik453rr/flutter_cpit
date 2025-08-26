import 'package:cpit/global.dart';
import 'package:cpit/language/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:language_picker/language_picker.dart';
import 'package:language_picker/languages.dart';

/// Displays a custom language picker dialog with optional selection callback and visual language selection indicator.
Future languageDialog({
  void Function(Language)? onValuePicked,
  required RxString selectedLangCode,
}) {
  return Get.dialog(
    Transform.scale(
      scaleX: 1.15,
      child: LanguagePickerDialog(
        titlePadding: EdgeInsets.only(bottom: 0),
        contentPadding: EdgeInsets.only(bottom: 15, top: 15),
        languages: [Languages.hindi, Languages.english],
        searchInputDecoration: InputDecoration(hintText: Strings.searchDot.tr),
        // isSearchable: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(Strings.selectYourLanguage.tr),
            IconButton(
              style: IconButton.styleFrom(
                visualDensity: VisualDensity.compact,
                padding: EdgeInsets.only(bottom: 30),
                highlightColor: Colors.transparent,
              ),
              onPressed: () {
                Global.hapticFeedback();
                Get.back();
              },
              icon: Icon(Icons.close),
            ),
          ],
        ),
        onValuePicked: (Language language) {
          Global.hapticFeedback();
          onValuePicked?.call(language);
        },
        itemBuilder: (language) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              children: [
                Text(language.nativeName),
                Obx(
                  () =>
                      selectedLangCode.value == language.isoCode
                          ? Padding(
                            padding: const EdgeInsets.only(left: 4),
                            child: Icon(Icons.check),
                          )
                          : SizedBox(),
                ),
              ],
            ),
          );
        },
      ),
    ),
  );
}
