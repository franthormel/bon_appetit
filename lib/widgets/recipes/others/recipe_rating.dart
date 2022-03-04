import 'package:flutter/material.dart';

import '../../../models/index.dart';

class RecipeRatingWidget extends StatelessWidget {
  final RecipeRating rating;

  const RecipeRatingWidget(
    this.rating, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.star, size: 16.0),
        const SizedBox(width: 4.0),
        Text(rating.text, style: Theme.of(context).textTheme.subtitle1),
      ],
    );
  }
}
