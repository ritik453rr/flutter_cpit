import 'package:cpit/language/strings.dart';
import 'package:get/get.dart';

/// Provides localized translations for supported languages.
class AppLanguage extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      /// Splash Page
      Strings.splashTitle: "CPIT EDUCATION",

      ///Login Page
      Strings.login: 'Login',
      Strings.pleaseEnterEmail: "Please enter your email",
      Strings.enterValidEmail: "Please enter a valid email",
      Strings.pleaseEnterPasswrod: "Please enter your password",
      Strings.email: "Email",
      Strings.password: "Password",
      Strings.forgotPassword: "Forgot password?",

      /// Home Page
      Strings.dashTitle: "Cpit Education",
      Strings.search:"Search",
      Strings.name:"Name",
      Strings.id:"ID",
      Strings.phone:"Phone",
      Strings.add:"Add",

      /// Settings Page
      Strings.settings: "Settings",
      Strings.searchDot: 'Search...',
      Strings.selectYourLanguage: 'Select your language',
      Strings.languages: "Languages",
      Strings.theme: "Theme",
      Strings.logout: "Logout",
      Strings.selectTheme: "Select Theme",
      Strings.dark: "Dark",
      Strings.light: "Light",
      Strings.sureToLogout: 'Are you sure you want to log out?',
      Strings.cancel: 'Cancel',
    },
    'hi_IN': {
      /// Splash Page
      Strings.splashTitle: "सीपीआईटी शिक्षा",

      /// Login Page
      Strings.login: 'लॉगिन',
      Strings.pleaseEnterEmail: "कृपया अपना ईमेल दर्ज करें",
      Strings.enterValidEmail: "कृपया एक मान्य ईमेल दर्ज करें",
      Strings.pleaseEnterPasswrod: "कृपया अपना पासवर्ड दर्ज करें",
      Strings.email: "ईमेल",
      Strings.password: "पासवर्ड",
      Strings.forgotPassword: "पासवर्ड भूल गए?",

      /// Home Page
      Strings.dashTitle: "सीपीआईटी शिक्षा",
      Strings.search:"खोजें",

      /// Settings Page
      Strings.settings: "सेटिंग्स",
      Strings.searchDot: 'खोजें...',
      Strings.selectYourLanguage: 'अपनी भाषा चुनें',
      Strings.languages: "भाषाएँ",
      Strings.theme: "थीम",
      Strings.logout: "लॉगआउट",
      Strings.selectTheme: "थीम चुनें",
      Strings.dark: "डार्क",
      Strings.light: "लाइट",
      Strings.sureToLogout: 'क्या आप वाकई लॉगआउट करना चाहते हैं?',
      Strings.cancel: 'रद्द करें',
    },
  };
}
