import 'package:flutter/material.dart';

import '../../../../models/recipes/recipe.dart';

mixin HorizontalListRecipesMixin on Widget {
  List<Recipe> filteredRecipes(BuildContext context);
}
