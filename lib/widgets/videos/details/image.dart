import 'package:flutter/material.dart';

import '../../../style/index.dart';
import '../../others/cached_hero_image.dart';

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
            backgroundColor: BonAppetitColors.white,
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                child: const Icon(Icons.play_arrow),
                decoration: BoxDecoration(
                  color: Theme.of(context)
                      .floatingActionButtonTheme
                      .backgroundColor,
                  shape: BoxShape.circle,
                ),
                height: double.infinity,
                width: double.infinity,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
