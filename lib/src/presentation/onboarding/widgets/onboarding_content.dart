import 'package:flutter/material.dart';
import 'package:newsz/src/config/theme/appcolors.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({
    required this.constraints,
    required this.textPrimary,
    required this.textSecondary,
    required this.textTertiary,
    Key? key,
    required this.image,
  }) : super(key: key);

  final BoxConstraints constraints;
  final String textPrimary;
  final String textSecondary;
  final String textTertiary;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          image,
          height: double.maxFinite,
          width: double.maxFinite,
          fit: BoxFit.cover,
        ),
        Container(
          decoration: BoxDecoration(color: blueVogue.withOpacity(0.5)),
        ),
        Positioned(
          bottom: constraints.maxHeight * 0.2,
          left: constraints.maxWidth * 0.05,
          child: SizedBox(
            width: constraints.maxWidth * 0.8,
            child: RichText(
              text: TextSpan(
                text: textPrimary,
                style: Theme.of(context).textTheme.headline2?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.white),
                children: [
                  TextSpan(
                    text: textSecondary,
                    style: Theme.of(context).textTheme.headline2?.copyWith(
                          color: redRibbon,
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                  ),
                  TextSpan(
                    text: textTertiary,
                    style: Theme.of(context).textTheme.headline2?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}