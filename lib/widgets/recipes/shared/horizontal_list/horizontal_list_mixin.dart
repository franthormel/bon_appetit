import '../../../../models/index.dart';
import '../../../../services/index.dart';

mixin HorizontalListMixin {
  RecipeList get type;

  FilterRecipeOption filterRecipeOption(AppState appState) {
    switch (type) {
      case RecipeList.suggested:
        return appState.filterSuggestedRecipes;
      case RecipeList.trending:
        return appState.filterTrendingRecipes;
    }
  }
}
