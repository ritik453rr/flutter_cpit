import 'package:cpit/language/strings.dart';
import 'package:get/get.dart';

class AppLanguage extends Translations{
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          /// Login
          Strings.login: 'Login',
          Strings.pleaseEnterEmail:"Please enter your email",
          Strings.enterValidEmail:"Pleaes enter a valid email",
          Strings.pleaseEnterPasswrod:"Please enter your password",
          Strings.email:"Email",
          Strings.password:"Password",
          Strings.forgotPassword:"Forgot password?",
          Strings.cpitEducation:"Cpit Education",
          // Add more key-value pairs for English language
        },
        'hi': {
          'login': 'लॉगिन',
          // Add more key-value pairs for Hindi language
        },
        // Add more languages as needed
      };
}