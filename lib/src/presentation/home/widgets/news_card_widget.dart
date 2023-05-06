import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newsz/src/config/images/images.dart';
import 'package:newsz/src/config/theme/appcolors.dart';

class NewsCardWidget extends StatelessWidget {
  const NewsCardWidget({
    Key? key,
    required this.constraints,
    required this.hasNoImage,
    required this.imageUrl,
    required this.category,
    required this.title,
    required this.publishedAt,
  }) : super(key: key);

  final BoxConstraints constraints;
  final bool hasNoImage;
  final String imageUrl;
  final String category;
  final String title;
  final String publishedAt;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: constraints.maxHeight * 0.2,
      width: constraints.maxWidth,
      decoration: BoxDecoration(
          color: athensGrey, borderRadius: BorderRadius.circular(30)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: SizedBox(
                width: constraints.maxWidth * 0.46,
                child: SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        category,
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 10),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        title,
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      // Text(articlePublished.toString()),
                    ],
                  ),
                ),
              ),
            ),
            const FaIcon(FontAwesomeIcons.bookmark)
          ],
        ),
      ),
    );
  }
}
