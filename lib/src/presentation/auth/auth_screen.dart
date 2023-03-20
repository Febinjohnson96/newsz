import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsz/src/config/theme/appcolors.dart';
import 'package:newsz/src/presentation/auth/auth_controller.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
        init: AuthController(),
        builder: (controller) {
          return Scaffold(
            body: SafeArea(
              child: LayoutBuilder(builder: (context, constraints) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: GestureDetector(
                        // behavior: HitTestBehavior.translucent,
                        onTap: ()=>controller.onTouchBackButton(),
                        child: AbsorbPointer(
                          child: SizedBox(
                            height: constraints.maxHeight * .04,
                            width: constraints.maxWidth*.02,
                            child: const Icon(
                              Icons.arrow_back,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: SizedBox(
                        height: constraints.maxHeight * 0.05,
                        child: ListView.separated(
                          separatorBuilder: (context, index) => const SizedBox(
                            width: 10,
                          ),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: blueVogue,
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Center(
                                  child: Text(
                                controller.authViews[index],
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6
                                    ?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                              )),
                            ),
                          ),
                          itemCount: controller.authViews.length,
                        ),
                      ),
                    )
                  ],
                );
              }),
            ),
          );
        });
  }
}
