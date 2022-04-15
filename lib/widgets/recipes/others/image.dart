import 'package:flutter/material.dart';

import '../../../models/index.dart';
import '../../../style/index.dart';
import '../../others/cached_hero_image.dart';

class RecipeImageWidget extends StatelessWidget {
  final Recipe recipe;
  final String? tag;

  const RecipeImageWidget(
    this.recipe, {
    this.tag,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(24.0),
          child: CachedHeroImageWidget(
            heroTag: recipe.heroTag,
            imageUrl: recipe.imageUrl,
          ),
        ),
        if (tag != null || recipe.tag != null)
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Chip(
              backgroundColor: BonAppetitColors.sizzlingSunrise,
              label: Text(tag ?? recipe.tag!),
            ),
          ),
      ],
    );
  }
}
