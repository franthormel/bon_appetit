import 'package:json_annotation/json_annotation.dart';

import '../recipes/recipe.dart';

part 'recipe_dataset.g.dart';

@JsonSerializable()
class RecipeDataset {
  /// Today's recipe
  final Recipe mainRecipe;

  /// Accompanies 'Today's Recipe' on the side
  final List<Recipe> otherMainRecipes;

  /// List of recipes on 'What to cook today/tonight'
  final List<Recipe> suggestedRecipes;
  final List<String> suggestedTags;

  /// List of recipes on 'Trending Now'
  final List<Recipe> trendingRecipes;
  final List<String> trendingTags;

  // TODO Add recipe details either add them as a
  // separate object here or as properties

  RecipeDataset({
    required this.mainRecipe,
    required this.otherMainRecipes,
    required this.suggestedRecipes,
    required this.suggestedTags,
    required this.trendingRecipes,
    required this.trendingTags,
  });

  factory RecipeDataset.fromJson(Map<String, dynamic> json) =>
      _$RecipeDatasetFromJson(json);

  Map<String, dynamic> toJson() => _$RecipeDatasetToJson(this);
}
