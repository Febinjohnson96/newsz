import 'package:flutter/material.dart';
import 'package:newsz/src/config/images/images.dart';

class OnboardingImages extends StatelessWidget {
  const OnboardingImages({
    required this.pageController,
    required this.constraints,
    Key? key,
  }) : super(key: key);
  final BoxConstraints constraints;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        Image.asset(
            height: constraints.maxHeight,
            width: constraints.maxWidth,
            fit: BoxFit.cover,
            protest),
        Image.asset(
            height: constraints.maxHeight,
            width: constraints.maxWidth,
            fit: BoxFit.cover,
            flags),
        Image.asset(
            height: constraints.maxHeight,
            width: constraints.maxWidth,
            fit: BoxFit.cover,
            dome),
      ],
    );
  }
}
