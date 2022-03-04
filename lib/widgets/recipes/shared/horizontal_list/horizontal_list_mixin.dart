import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../models/index.dart';
import '../../../../services/index.dart';

mixin HorizontalListMixin {
  Filter chooseRecipeFilter(BuildContext context, RecipeList type) {
    switch (type) {
      case RecipeList.suggested:
        return Provider.of<SuggestedRecipesFilter>(context);
      case RecipeList.trending:
        return Provider.of<TrendingRecipesFilter>(context);
    }
  }
}
