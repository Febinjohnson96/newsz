import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsz/src/config/theme/appcolors.dart';
import 'package:newsz/src/presentation/home/home_controller.dart';
import 'package:newsz/src/presentation/home/widgets/category_button.dart';
import 'package:newsz/src/presentation/home/widgets/hero_news_element.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) {
          return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              body: Obx(
                () => controller.isLoading
                    ? const Center(
                        child: CircularProgressIndicator(
                          strokeWidth: 6,
                          color: redRibbon,
                        ),
                      )
                    : FadeInUp(
                        child: LayoutBuilder(builder: (context, constraints) {
                          return SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: constraints.maxHeight * 0.6,
                                    child: ListView.separated(
                                      separatorBuilder: (context, index) =>
                                          const SizedBox(
                                        width: 10,
                                      ),
                                      scrollDirection: Axis.horizontal,
                                      physics: const BouncingScrollPhysics(),
                                      itemCount: controller.articles.length,
                                      itemBuilder: (context, index) {
                                        return HeroNewsElement(
                                          source: controller
                                              .articles[index].source?.name,
                                          imageUrl: controller
                                              .articles[index].urlToImage
                                              .toString(),
                                          title: controller
                                              .articles[index].title
                                              .toString(),
                                          constraints: constraints,
                                        );
                                      },
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  SizedBox(
                                    height: constraints.maxHeight * 0.06,
                                    child: ListView.separated(
                                        physics: const BouncingScrollPhysics(),
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (context, index) {
                                          return Obx(
                                            () => CategoryButton(
                                              callback: () => controller
                                                  .selectCategories(controller
                                                          .newsCategoriesList[
                                                      index]),
                                              isSelected: controller
                                                      .selectedcategory ==
                                                  controller.newsCategoriesList[
                                                      index],
                                              title: controller
                                                  .newsCategoriesList[index],
                                            ),
                                          );
                                        },
                                        separatorBuilder: (context, index) =>
                                            const SizedBox(
                                              width: 8,
                                            ),
                                        itemCount: controller
                                            .newsCategoriesList.length),
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                      ),
              ));
        });
  }
}
