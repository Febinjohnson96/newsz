import 'package:get/get.dart';
import 'package:newsz/src/presentation/onboarding/onboarding_screen.dart';

import '../../presentation/home/home.dart';

List<GetPage> appRoutes = [
  GetPage(name: "/", page: () => const OnBoardingScreen()),
  GetPage(
    name: "/home",
    page: () => const HomeView(),
  ),
];
