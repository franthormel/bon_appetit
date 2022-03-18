import 'package:flutter/material.dart';

import '../../../models/index.dart';
import '../../../style/colors.dart';
import '../../others/cached_image.dart';

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
          child: CachedImageWidget(
            imageUrl: recipe.imageUrl,
            heroTag: recipe.heroTag,
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
