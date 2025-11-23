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
      Strings.loginFailed: "Login Failed",
      Strings.somethingWentWrong: "Something went wrong",

      /// Home Page
      Strings.dashTitle: "Cpit Education",
      Strings.search: "Search",
      Strings.name: "Name",
      Strings.id: "ID",
      Strings.phone: "Phone",
      Strings.add: "Add",
      Strings.noStudentsFound: "No students found",
      Strings.addNewStudent: "Try adding a student using the + button",

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
      Strings.sureToLogout: 'Are you sure you want to log out',
      Strings.cancel: 'Cancel',

      /// Add Student Page
      Strings.addStudent: "Add Student",
      Strings.address: "Address",
      Strings.pickImage: "Pick Image",
      Strings.enterYourName: "Enter your name",
      Strings.enterYourEmail: "Enter your email",
      Strings.enterYourPhone: "Enter your phone",
      Strings.enterYourAddress: "Enter your address",
      Strings.tapToUploadImage: "Tap to upload image",
      Strings.permissionRequired: "Permission Required",
      Strings.enableCameraPermission:
          "Camera permission is permanently denied, please enable it in settings.",
      Strings.openSettings: "Open Settings",
      Strings.camera: "Camera",
      Strings.gallery: "Gallery",
      Strings.enableGalleryPermission:
          "Gallery permission is permanently denied, please enable it in settings.",
      Strings.nameRequired: "Name Required",
      Strings.pleaseEnterName: "Please enter your name to continue.",
      Strings.invalidEmail: "Invalid Email",
      Strings.pleaseEnterValidEmail: "Please enter a valid email to continue.",
      Strings.phoneRequired: "Phone Required",
      Strings.pleaseEnterYourPhone: "Please enter your phone to continue.",
      Strings.addressRequired: "Address Required",
      Strings.pleaseEnterAddress: "Please enter your address to continue.",
      Strings.success: "Success",
      Strings.studentRegisteredSuccessfully: "Student registered successfully",
      Strings.invalidPhone: "Invalid Phone",
      Strings.pleaseEnterValidPhone:
          "Please enter a valid phone number to continue.",
      Strings.fathersName: "Father's Name",
      Strings.enterFatherName: "Enter father's name",
      Strings.dob: "Date of birth",
      Strings.selectDob: "Select date of birth",
      Strings.course: "Course",
      Strings.registrationDate: "Registration Date",
      Strings.selectRegisDate: "Select registration date",
      Strings.enterCourse: "Enter Course",
      Strings.fathersNameRequired: "Father's Name Required",
      Strings.pleaseEnterFatherName: "Please enter father's name to continue",
      Strings.dobRequired: "Date of Birth Required",
      Strings.pleaseSelectDob: "Please select date of birth to continue",
      Strings.genderRequired: "Gender Required",
      Strings.pleaseSelectGender: "Please select gender to continue",
      Strings.courseRequired: "Course Required",
      Strings.pleaseEnterCourse: "Please enter course to continue",
      Strings.regisDateRequired: "Registration Date Required",
      Strings.pleaseSelectRegisDate: "Please select registration date",
      Strings.emailRequired: "Email Required",
      Strings.gender: "Gender",
      Strings.selectGender: "Select Gender",
      Strings.male: "Male",
      Strings.female: "Female",
      Strings.other: "Other",

      /// Student Detail Page
      Strings.studentDetail: "Student Detail",
      Strings.studentName: "Student Name",
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
      Strings.loginFailed: "लॉगिन असफल",
      Strings.somethingWentWrong: "कुछ गलत हो गया",

      /// Home Page
      Strings.dashTitle: "सीपीआईटी शिक्षा",
      Strings.search: "खोजें",
      Strings.name: "नाम",
      Strings.id: "आईडी",
      Strings.phone: "फोन",
      Strings.add: "जोड़ें",
      Strings.noStudentsFound: "कोई छात्र नहीं मिला",
      Strings.addNewStudent: "कृपया + बटन का उपयोग करके एक छात्र जोड़ें",

      /// Add Student Page
      Strings.addStudent: "छात्र जोड़ें", // ADDED: missing key
      Strings.address: "पता", // ADDED: missing key
      Strings.pickImage: "छवि चुनें", // ADDED: missing key
      Strings.enterYourName: "अपना नाम दर्ज करें", // ADDED: missing key
      Strings.enterYourEmail: "अपना ईमेल दर्ज करें", // ADDED: missing key
      Strings.enterYourPhone: "अपना फोन दर्ज करें", // ADDED: missing key
      Strings.enterYourAddress: "अपना पता दर्ज करें", // ADDED: missing key
      Strings.tapToUploadImage:
          "छवि अपलोड करने के लिए टैप करें", // ADDED: missing key
      Strings.permissionRequired: "अनुमति आवश्यक", // ADDED: missing key
      Strings.enableCameraPermission:
          "कैमरा अनुमति स्थायी रूप से अस्वीकृत है, कृपया सेटिंग्स में सक्षम करें।", // ADDED
      Strings.openSettings: "सेटिंग्स खोलें", // ADDED: missing key
      Strings.camera: "कैमरा", // ADDED: missing key
      Strings.gallery: "गैलरी", // ADDED: missing key
      Strings.enableGalleryPermission:
          "गैलरी अनुमति स्थायी रूप से अस्वीकृत है, कृपया सेटिंग्स में सक्षम करें।", // ADDED
      Strings.nameRequired: "नाम आवश्यक", // ADDED
      Strings.pleaseEnterName:
          "कृपया जारी रखने के लिए अपना नाम दर्ज करें।", // ADDED
      Strings.invalidEmail: "अमान्य ईमेल", // ADDED
      Strings.pleaseEnterValidEmail:
          "कृपया जारी रखने के लिए एक मान्य ईमेल दर्ज करें।", // ADDED
      Strings.phoneRequired: "फोन आवश्यक", // ADDED
      Strings.pleaseEnterYourPhone:
          "कृपया जारी रखने के लिए अपना फोन दर्ज करें।", // ADDED
      Strings.addressRequired: "पता आवश्यक", // ADDED
      Strings.pleaseEnterAddress:
          "कृपया जारी रखने के लिए अपना पता दर्ज करें।", // ADDED
      Strings.success: "सफलता", // ADDED
      Strings.studentRegisteredSuccessfully:
          "छात्र सफलतापूर्वक पंजीकृत हुआ", // ADDED
      Strings.invalidPhone: "अमान्य फोन", // ADDED
      Strings.pleaseEnterValidPhone:
          "कृपया जारी रखने के लिए एक मान्य फोन नंबर दर्ज करें।", // ADDED
      Strings.fathersName: "पिता का नाम", // ADDED
      Strings.enterFatherName: "पिता का नाम दर्ज करें", // ADDED
      Strings.dob: "जन्म तिथि", // ADDED
      Strings.selectDob: "जन्म तिथि चुनें", // ADDED
      Strings.course: "कोर्स", // ADDED
      Strings.registrationDate: "पंजीकरण तिथि", // ADDED
      Strings.selectRegisDate: "पंजीकरण तिथि चुनें", // ADDED
      Strings.enterCourse: "कोर्स दर्ज करें", // ADDED
      Strings.fathersNameRequired: "पिता का नाम आवश्यक", // ADDED
      Strings.pleaseEnterFatherName:
          "कृपया जारी रखने के लिए पिता का नाम दर्ज करें", // ADDED
      Strings.dobRequired: "जन्म तिथि आवश्यक", // ADDED
      Strings.pleaseSelectDob:
          "कृपया जारी रखने के लिए जन्म तिथि चुनें", // ADDED
      Strings.genderRequired: "लिंग आवश्यक", // ADDED
      Strings.pleaseSelectGender: "कृपया जारी रखने के लिए लिंग चुनें", // ADDED
      Strings.courseRequired: "कोर्स आवश्यक", // ADDED
      Strings.pleaseEnterCourse:
          "कृपया जारी रखने के लिए कोर्स दर्ज करें", // ADDED
      Strings.regisDateRequired: "पंजीकरण तिथि आवश्यक", // ADDED
      Strings.pleaseSelectRegisDate: "कृपया पंजीकरण तिथि चुनें", // ADDED
      Strings.emailRequired: "ईमेल आवश्यक", // ADDED
      Strings.gender: "लिंग", // ADDED
      Strings.selectGender: "लिंग चुनें", // ADDED
      Strings.male: "पुरुष", // ADDED
      Strings.female: "महिला", // ADDED
      Strings.other: "अन्य",

      /// Student Detail Page
      Strings.studentDetail: "छात्र विवरण", // ADDED
      Strings.studentName: "छात्र का नाम",

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
