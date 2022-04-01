import 'package:flutter/material.dart';

import 'cached_image.dart';
import '../../models/index.dart';

class CachedHeroImageWidget extends StatelessWidget {
  final String heroTag;
  final String imageUrl;
  final ImageAspectRatio? aspectRatio;

  const CachedHeroImageWidget({
    required this.heroTag,
    required this.imageUrl,
    this.aspectRatio,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: heroTag,
      child: CachedImageWidget(imageUrl, aspectRatio: aspectRatio),
    );
  }
}
