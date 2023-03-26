import 'package:get/get.dart';

class SignInOptionsController extends GetxController {
  void routeToAuth() {
    Get.toNamed('/auth');
  }

    void routeToSignUp() {
    Get.toNamed('/signup');
  }
}
