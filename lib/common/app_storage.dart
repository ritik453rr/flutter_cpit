import 'package:get_storage/get_storage.dart';

/// A utility class for storing and retrieving language and country codes locally using GetStorage.
class AppStorage {
  static var storage = GetStorage();

  ///Keys
  static const String _langCode = "langCode";
  static const String _countryCode = "countryCode";
  static const String _isDarkMode = "isDarkMode";
  static const String _isLogin = "islogin";

  /// Method to check is user logged in
  static bool isLogin() {
    return storage.read(_isLogin) ?? false;
  }

  /// Method to set login status
  static void setLoginStatus({required bool status}) {
    storage.write(_isLogin, status);
  }

  /// Method to set theme mode
  static void setThemeMode({required bool isDark}) {
    storage.write(_isDarkMode, isDark);
  }

  /// Methdo to check is dark theme or not
  static bool isDarkTheme() {
    return storage.read(_isDarkMode) ?? false;
  }

  /// Saves the language code locally.
  static void setLangCode({required String code}) {
    storage.write(_langCode, code);
  }

  /// Saves the country code locally.
  static void setCountryCode({required String code}) {
    storage.write(_countryCode, code);
  }

  /// Retrieves the saved language code or returns 'en' if none found.
  static String getLangCode() {
    return storage.read(_langCode) ?? "en";
  }

  /// Retrieves the saved country code or returns 'US' if none found.
  static String getCountryCode() {
    return storage.read(_countryCode) ?? "US";
  }

  /// Method to clear storage
  static clearStorage() {
    storage.erase();
  }
}
