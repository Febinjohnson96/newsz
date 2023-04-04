import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:newsz/src/core/utils/validation/validation.dart';
import 'package:newsz/src/data/data_sources/local/hive_provider.dart';
import 'package:newsz/src/data/models/user_signup_model.dart';

class SignUpController extends GetxController {
  final userNameController = TextEditingController();
  final emailController = TextEditingController();
  final passWordController = TextEditingController();

  final hive = GetIt.I.get<HiveProvider>();
  final validation = AppValidations();

  final _isPassWordNotVisible = true.obs;
  bool get isPassWordNotVisible => _isPassWordNotVisible.value;

  final _acceptedAgreement = false.obs;
  bool get acceptedAgreement => _acceptedAgreement.value;

  final _emailError = "".obs;
  String get emailError => _emailError.value;

  final _passWordError = "".obs;
  String get passWordError => _passWordError.value;

  @override
  void onInit() {
    super.onInit();
    openUserBox();
  }

  @override
  void onClose() {
    super.onClose();
    closeHiveBoxes();
  }

  void changePasswordVisibilty(bool passWordVisibility) {
    _isPassWordNotVisible(passWordVisibility);
  }

  void acceptAgreement(bool value) {
    debugPrint("Accepted $value");
    _acceptedAgreement(value);
  }

  openUserBox() async {
    await hive.openUserBox();
  }

  void closeHiveBoxes() {
    Hive.close();
    debugPrint("Closing Hive Boxes");
  }

  void onClickSignUpButton() {
    if (validateUserCredential()) {
      debugPrint("Success");
      final userCredential = UserSignUpModel(
        userName: userNameController.text,
        email: emailController.text,
        passWord: passWordController.text,
      );
      hive.insertUserCredential(userCredential);
    } else {
      debugPrint("False");
    }
  }

  bool validateUserCredential() {
    if (emailController.text.isEmpty) {
      _emailError("Email is empty");
      return false;
    }
    if (!validation.isValidEmail(emailController.text)) {
      _emailError("Please fill email properly");
      return false;
    }
    if (!validation.isValidPassWord(passWordController.text)) {
      _passWordError(
          "Please fill password in the format John!2d\nNeed 1 capitalletter\nAt least 1 number\n1 special character");
      return false;
    }
    if (emailController.text.isNotEmpty ||
        validation.isValidEmail(emailController.text)) {
      _emailError('');
    }
    if (validation.isValidPassWord(passWordController.text)) {
      _passWordError('');
    }
    _emailError('');
    _passWordError('');
    return true;
  }
}
