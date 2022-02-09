import 'recipe.dart';

class RecipeDataset {
  /// Today's main recipe
  final Recipe mainRecipe;

  /// Accompanies 'Today's Recipe' on the side
  final List<Recipe> otherMainRecipes;

  /// List of recipes on 'What to cook today/tonight'
  final List<Recipe> suggestedRecipes;

  /// List of recipes on 'Trending Now'
  final List<Recipe> trendingRecipes;

  RecipeDataset({
    required this.mainRecipe,
    required this.otherMainRecipes,
    required this.suggestedRecipes,
    required this.trendingRecipes,
  });
}
