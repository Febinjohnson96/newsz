import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:newsz/src/data/models/user_signup_model.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

class HiveProvider {
  static const userSignupBox = "userSignUp";

  intializeHive() async {
    final appDocumentDirectory =
        await path_provider.getApplicationDocumentsDirectory();
    await Hive.initFlutter(appDocumentDirectory.path);
    debugPrint("Initializing Hive!!!");

    Hive.registerAdapter(UserSignUpModelAdapter());
    debugPrint("Adapter registered");
  }

  //user credentials
  Future openUserBox() async {
    await Hive.openBox<UserSignUpModel>(userSignupBox);
    debugPrint("Opening userBox");
  }

  Future insertUserCredential(UserSignUpModel user) async {
    Box userBox = Hive.box<UserSignUpModel>(userSignupBox);
    userBox.clear();
    userBox.add(user);
    if (userBox.isNotEmpty) {
      debugPrint("Credentials Added to userBox");
    }
  }

  UserSignUpModel readDataFromUserBox(){
    Box userBox = Hive.box<UserSignUpModel>(userSignupBox);
    final userData = userBox.values.first;
    return userData;
  }
}
