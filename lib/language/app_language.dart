import 'package:get/get.dart';

class AppLanguage extends Translations{
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          'login': 'Login',
          // Add more key-value pairs for English language
        },
        'hi': {
          'login': 'लॉगिन',
          // Add more key-value pairs for Hindi language
        },
        // Add more languages as needed
      };
}