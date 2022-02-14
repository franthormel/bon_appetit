import 'package:flutter/material.dart';

import '../../style/colors.dart';
import '../cached_image_progress.dart';

class RecipeImageWidget extends StatelessWidget {
  final String imageUrl;
  final String? tag;

  const RecipeImageWidget({
    required this.imageUrl,
    this.tag,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(24.0),
          child: CachedImageProgressWidget(
            imageUrl: imageUrl,
          ),
        ),
        if (tag != null)
          Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
              top: 8.0,
            ),
            child: Chip(
              backgroundColor: BonAppetitColors.sizzlingSunrise,
              label: Text(tag!),
            ),
          ),
      ],
    );
  }
}
