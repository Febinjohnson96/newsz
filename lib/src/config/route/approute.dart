import 'package:get/get.dart';
import 'package:newsz/src/presentation/onboarding/onboarding_screen.dart';
import 'package:newsz/src/presentation/signin/signin_screen.dart';
import 'package:newsz/src/presentation/splash/splash_screen.dart';

import '../../presentation/home/home.dart';

List<GetPage> appRoutes = [
  GetPage(
    name: '/',
    page: () => const SplashScreen(),
  ),
  GetPage(
    name: "/onboarding",
    page: () => const OnBoardingScreen(),
  ),
  GetPage(
    name: "/home",
    page: () => const HomeView(),
  ),
  GetPage(
    name: "/signin",
    page: () => const SignInScreen(),
    transition: Transition.fadeIn,
  ),
];
