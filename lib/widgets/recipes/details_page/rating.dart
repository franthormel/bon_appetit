import 'package:flutter/material.dart';

import '../../../models/index.dart';
import '../others/rating_stars.dart';

class RecipeDetailsPageRatingWidget extends StatelessWidget {
  final RecipeRating rating;

  const RecipeDetailsPageRatingWidget(
    this.rating, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(rating.value, style: Theme.of(context).textTheme.headline5),
        const SizedBox(width: 10.0),
        RatingStarsWidget(double.tryParse(rating.value)),
        const SizedBox(width: 10.0),
        Text("(${rating.count})", style: Theme.of(context).textTheme.caption),
      ],
    );
  }
}
