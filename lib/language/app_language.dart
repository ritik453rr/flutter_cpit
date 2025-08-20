import 'package:cpit/language/strings.dart';
import 'package:get/get.dart';

/// Provides localized translations for supported languages.
class AppLanguage extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          Strings.login: 'Login',
          Strings.pleaseEnterEmail: "Please enter your email",
          Strings.enterValidEmail: "Please enter a valid email",
          Strings.pleaseEnterPasswrod: "Please enter your password",
          Strings.email: "Email",
          Strings.password: "Password",
          Strings.forgotPassword: "Forgot password?",
          Strings.cpitEducation: "CPIT EDUCATION",
        },
        'hi_IN': {
          Strings.login: 'लॉगिन',
          Strings.pleaseEnterEmail: "कृपया अपना ईमेल दर्ज करें",
          Strings.enterValidEmail: "कृपया एक मान्य ईमेल दर्ज करें",
          Strings.pleaseEnterPasswrod: "कृपया अपना पासवर्ड दर्ज करें",
          Strings.email: "ईमेल",
          Strings.password: "पासवर्ड",
          Strings.forgotPassword: "पासवर्ड भूल गए?",
          Strings.cpitEducation: "सीपीआईटी शिक्षा",
        },
      };
}
