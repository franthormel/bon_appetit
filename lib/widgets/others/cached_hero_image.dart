import 'package:flutter/material.dart';

import '../../models/index.dart';
import 'cached_image.dart';

class CachedHeroImageWidget extends StatelessWidget {
  final String heroTag;
  final String imageUrl;
  final ImageAspectRatio? aspectRatio;
  final bool isDark;

  const CachedHeroImageWidget({
    required this.heroTag,
    required this.imageUrl,
    this.aspectRatio,
    this.isDark = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: heroTag,
      child: CachedImageWidget(
        imageUrl,
        imageAspectRatio: aspectRatio,
        isDark: isDark,
      ),
    );
  }
}
