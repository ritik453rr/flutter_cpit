import 'package:url_launcher/url_launcher.dart';

/// Global utility class for common functions
class Global {
  /// Opens a URL in the default web browser
  static void openLink(String url) {
      launchUrl(Uri.parse(url) );

  }
}
