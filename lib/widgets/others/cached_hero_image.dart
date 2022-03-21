import 'package:flutter/material.dart';

import 'cached_image.dart';

class CachedHeroImageWidget extends StatelessWidget {
  final String heroTag;
  final String imageUrl;

  const CachedHeroImageWidget({
    required this.heroTag,
    required this.imageUrl,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(tag: heroTag, child: CachedImageWidget(imageUrl));
  }
}
