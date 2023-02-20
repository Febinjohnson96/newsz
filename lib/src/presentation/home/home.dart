import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsz/src/presentation/home/home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) {
          return  Scaffold(
            body: Center(
              child: Text("home"),
            ),
          );
        });
  }
}
