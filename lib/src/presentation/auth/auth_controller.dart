import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  List<String> get authViews => ["Sign In", "Sign Up"];

  void onTouchBackButton() {
    debugPrint("Tapped");
    Get.back();
  }
}
