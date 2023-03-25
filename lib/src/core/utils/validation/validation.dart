import 'package:get/get.dart';

class AppValidations {
  bool isValidEmail(String email) {
    return GetUtils.isEmail(email);
  }

  bool isValidOtp(String otp) {
    return RegExp(r"^[0-9]{4}$").hasMatch(otp);
  }

  bool isValidPhone(String phone) {
    return RegExp(r"^[0-9]{0,20}$").hasMatch(phone);
  }

  bool isValidPassWord(String password) {
    return RegExp(
            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
        .hasMatch(password); // ex test123!
  }
}
