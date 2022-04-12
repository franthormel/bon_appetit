import 'package:flutter/material.dart';

import '../../../../models/index.dart';

class DrawerPageRecipeRatingWidget extends StatelessWidget {
  final RecipeRating rating;

  const DrawerPageRecipeRatingWidget(
    this.rating, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text("Rating");
  }
}
