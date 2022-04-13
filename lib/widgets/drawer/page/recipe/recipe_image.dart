import 'package:flutter/material.dart';

import '../../../others/cached_hero_image.dart';

class DrawerPageRecipeImageWidget extends StatelessWidget {
  final String heroTag;
  final String imageUrl;

  const DrawerPageRecipeImageWidget({
    required this.heroTag,
    required this.imageUrl,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: Apply this to all other images with aspect ratios in their url
    return ClipRect(
      child: Align(
        alignment: Alignment.center,
        heightFactor: 9 / 16,
        child: CachedHeroImageWidget(heroTag: heroTag, imageUrl: imageUrl),
      ),
    );
  }
}
