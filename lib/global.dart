import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

/// Global utility class for common functions
class Global {
  static const hzPadding = 20.0;
  /// Opens a URL in the default web browser
  static void openLink(String url) {
      launchUrl(Uri.parse(url) );
  }

/// Opens a URL in the default web browser with a fallback
   static void hapticFeedback(){
    if (GetPlatform.isIOS) {
    HapticFeedback.lightImpact();
  } else {
    HapticFeedback.vibrate();
  }
   }

   // Hides the keyboard by removing focus from the current input field
  static hideKeyBoard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  

}
