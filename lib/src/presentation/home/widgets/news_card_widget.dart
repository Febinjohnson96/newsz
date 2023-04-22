import 'package:flutter/material.dart';
import 'package:newsz/src/config/images/images.dart';
import 'package:newsz/src/config/theme/appcolors.dart';

class NewsCardWidget extends StatelessWidget {
  const NewsCardWidget({
    Key? key,
    required this.constraints,
    required this.hasNoImage,
    required this.imageUrl,
  }) : super(key: key);

  final BoxConstraints constraints;
  final bool hasNoImage;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: constraints.maxHeight * 0.2,
      width: constraints.maxWidth,
      decoration: BoxDecoration(
          color: athensGrey, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 12),
        child: Row(
          children: [
            hasNoImage
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                        fit: BoxFit.cover,
                        height: constraints.maxHeight * 0.2,
                        width: constraints.maxWidth * 0.25,
                        noImage),
                  )
                : ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      fit: BoxFit.cover,
                      height: constraints.maxHeight * 0.2,
                      width: constraints.maxWidth * 0.25,
                      imageUrl,
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
