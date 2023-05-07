import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsz/src/presentation/home/home_main_view_controller.dart';
import 'package:newsz/src/widgets/app_botton_nav_bar.dart';

class HomeMainView extends StatelessWidget {
  const HomeMainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeMainViewController>(
        init: HomeMainViewController(),
        builder: (controller) {
          return Scaffold(
            bottomNavigationBar: AppBottomNavbar(
              selectedIndex: controller.selectedIndex,
              barItems: controller.barItems,
            ),
          );
        });
  }
}
