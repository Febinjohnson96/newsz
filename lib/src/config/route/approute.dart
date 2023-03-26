import 'package:get/get.dart';
import 'package:newsz/src/presentation/auth/auth_screen.dart';
import 'package:newsz/src/presentation/onboarding/onboarding_screen.dart';
import 'package:newsz/src/presentation/sign_up/sign_up_screen_main.dart';
import 'package:newsz/src/presentation/signin_options/signin_options_screen.dart';
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
    name: "/signinoptions",
    page: () => const SignInOptionsScreen(),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: "/auth",
    page: () => const AuthScreen(),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: "/signup",
    page: () => const SignUpScreenMain(),
    transition: Transition.fadeIn,
  ),
];
