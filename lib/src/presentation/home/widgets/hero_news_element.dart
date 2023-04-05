import 'package:flutter/material.dart';
import 'package:newsz/src/config/images/images.dart';
import 'package:newsz/src/config/theme/appcolors.dart';

class HeroNewsElement extends StatelessWidget {
  const HeroNewsElement({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.constraints,
    this.source,
  }) : super(key: key);

  final String imageUrl;
  final String title;
  final BoxConstraints constraints;
  final String? source;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: constraints.maxHeight * 0.6,
          width: constraints.maxWidth * 0.9,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Container(
              color: blueVogue,
              child: Opacity(
                opacity: 0.4,
                child: imageUrl.isNotEmpty
                    ? Image.network(
                        errorBuilder: (context, error, stackTrace) =>
                            Image.asset(
                          noImage,
                          fit: BoxFit.cover,
                        ),
                        imageUrl,
                        fit: BoxFit.cover,
                      )
                    : const SizedBox(),
              ),
            ),
          ),
        ),
        Container(
          height: constraints.maxHeight * 0.6,
          decoration: BoxDecoration(
              color: blueVogue.withOpacity(0.5),
              borderRadius: BorderRadius.circular(40)),
        ),
        Positioned(
          bottom: constraints.maxHeight * 0.1,
          left: constraints.maxWidth * 0.06,
          child: SizedBox(
            width: constraints.maxWidth * 0.6,
            child: Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Positioned(
          left: constraints.maxWidth * 0.06,
          bottom: constraints.maxHeight*0.05,
          child: Text(
            source ?? '',
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
