import 'package:cpit/language/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(AppStrings.login.tr, style: TextStyle(fontSize: 24))),
    );
  }
}
