import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    reDirectToOnboard();
  }

  void reDirectToOnboard() {
    Future.delayed(const Duration(milliseconds: 1400), () {
      Get.offNamed("/onboarding");
    });
  }
}
