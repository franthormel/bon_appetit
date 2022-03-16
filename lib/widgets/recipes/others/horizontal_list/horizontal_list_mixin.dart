import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../models/index.dart';
import '../../../../services/index.dart';

mixin HorizontalListMixin {
  FilterProvider chooseRecipeFilter(BuildContext context, RecipeList type) {
    switch (type) {
      case RecipeList.suggested:
        return Provider.of<SuggestedRecipesFilter>(context, listen: false);
      case RecipeList.trending:
        return Provider.of<TrendingRecipesFilter>(context, listen: false);
    }
  }
}
