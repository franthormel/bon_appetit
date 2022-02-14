import 'package:flutter/material.dart';

import '../../../models/index.dart';
import '../recipe_image.dart';
import '../recipe_rating.dart';

class WhatToCookRecipeWidget extends StatelessWidget {
  final Recipe recipe;

  const WhatToCookRecipeWidget({
    required this.recipe,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.0,
      child: Text(
        recipe.title,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}
