import 'package:flutter/material.dart';

import '../../../../models/index.dart';
import '../../../others/horizontal_padding.dart';
import '../../../others/rating_stars.dart';

class DrawerPageRecipeRatingWidget extends StatelessWidget {
  final RecipeRating rating;

  const DrawerPageRecipeRatingWidget(
    this.rating, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HorizontalPaddingWidget(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(ratingCountText),
              const SizedBox(width: 10.0),
              RatingStarsWidget(double.tryParse(rating.value)),
            ],
          ),
        ),
        const SizedBox(height: 40.0),
      ],
    );
  }

  String get ratingCountText => "${rating.count} RATINGS";
}
