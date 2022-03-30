import 'package:flutter/material.dart';

import '../../../models/index.dart';
import '../../../style/theme_radley.dart';

class RecipeDetailsUserReviewWidget extends StatelessWidget {
  final RecipeReview review;

  const RecipeDetailsUserReviewWidget(
    this.review, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(review.review, style: BonAppetitThemeRadley.bodyText1),
        const SizedBox(height: 15.0),
        Text(review.toString().toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .subtitle2
                ?.apply(fontSizeDelta: -2.0)),
        const SizedBox(height: 8.0),
        const Divider(),
      ],
    );
  }
}
