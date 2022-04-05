import 'package:flutter/material.dart';

import '../../others/cached_hero_image.dart';
import '../../../style/colors.dart';

class VideoDetailsImageWidget extends StatelessWidget {
  final String heroTag;
  final String imageUrl;
  final String title;

  const VideoDetailsImageWidget({
    required this.heroTag,
    required this.imageUrl,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CachedHeroImageWidget(heroTag: heroTag, imageUrl: imageUrl),
        Opacity(
          opacity: 0.70,
          child: FloatingActionButton.small(
            onPressed: () {},
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: BonAppetitColors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  child: const Icon(Icons.play_arrow),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context)
                        .floatingActionButtonTheme
                        .backgroundColor,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
