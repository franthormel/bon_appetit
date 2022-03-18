import 'package:flutter/material.dart';

import '../../others/cached_image.dart';

class RecipeDetailsPageImageWidget extends StatelessWidget {
  final String imageUrl;
  final String heroTag;

  const RecipeDetailsPageImageWidget({
    required this.imageUrl,
    required this.heroTag,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedImageWidget(imageUrl: imageUrl, heroTag: heroTag);
  }
}
