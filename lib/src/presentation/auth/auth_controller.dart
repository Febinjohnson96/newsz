import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  List<String> get authViews => ["Sign In", "Sign Up"];

  final _selectedView = 'Sign In'.obs;
  String get selectedView => _selectedView.value;

  void onTouchBackButton() {
    debugPrint("Tapped");
    Get.back();
  }

  void swapView(String viewName) {
    _selectedView(viewName);
  }
}
