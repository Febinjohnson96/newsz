import 'package:flutter/material.dart';
import 'package:newsz/src/config/theme/appcolors.dart';

class OnboardingTitles extends StatelessWidget {
  const OnboardingTitles({
    required this.pageController,
    Key? key,
  }) : super(key: key);
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        RichText(
            text: TextSpan(
                text: "Get the latest news from",
                style: Theme.of(context).textTheme.headline2?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.white),
                children: [
              TextSpan(
                text: "\nreliable\nsources",
                style: Theme.of(context).textTheme.headline2?.copyWith(
                      color: redRibbon,
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
              ),
              TextSpan(
                text: ".",
                style: Theme.of(context).textTheme.headline2?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
              )
            ]))
      ],
    );
  }
}