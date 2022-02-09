import 'package:json_annotation/json_annotation.dart';

import 'recipe.dart';

part 'recipe_dataset.g.dart';

@JsonSerializable()
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

  factory RecipeDataset.fromJson(Map<String, dynamic> json) =>
      _$RecipeDatasetFromJson(json);

  Map<String, dynamic> toJson() => _$RecipeDatasetToJson(this);
}
