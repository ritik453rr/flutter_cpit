import 'package:cpit/common/common_ui.dart';
import 'package:cpit/global.dart';
import 'package:cpit/language/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("CPIT", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: SizedBox(
        width: Get.width,
        height: Get.height,
        child: Column(
          children: [CommonUi.setPng("cpit_logo", color: Colors.black)],
        ),
      ),
    );
  }
}
