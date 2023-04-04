import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:newsz/src/data/data_sources/local/hive_provider.dart';
import 'package:newsz/src/data/models/user_signup_model.dart';

class SplashController extends GetxController {
  final hive = GetIt.I.get<HiveProvider>();

  final _currentAccount = Rxn<UserSignUpModel>();
  UserSignUpModel? get currentAccount => _currentAccount.value;

  UserSignUpModel? userdata;
  @override
  void onInit() async {
    super.onInit();
    await fetchUserDataFromHive();
    await reDirectToOnboard();
  }

  Future<void> reDirectToOnboard() async {
    Future.delayed(const Duration(milliseconds: 1400), () {
      if (currentAccount!.userName!.isEmpty) {
        Get.offNamed("/onboarding");
      } else {
        Get.offNamed('/home');
      }
    });
  }

  Future<void> fetchUserDataFromHive() async {
    await hive.openUserBox();
    final user = hive.readDataFromUserBox();
    _currentAccount(user);
  }
}
