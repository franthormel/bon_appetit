import 'package:json_annotation/json_annotation.dart';

import '../recipes/recipe.dart';

part 'recipe_dataset.g.dart';

@JsonSerializable()
class RecipeDataset {
  /// The first entry in the list of recipes is considered "Today's Recipe"
  /// The other three (3) recipes are displayed on the right side of "Today's Recipe"
  final List<Recipe> main;

  /// List of recipes on 'What to cook today/tonight'
  /// Usually there are around twenty (~20) recipes
  final List<Recipe> suggested;

  /// List of recipes on 'Trending Now'
  /// Usually there are around twenty (~20) recipes
  final List<Recipe> trending;

  RecipeDataset({
    required this.main,
    required this.suggested,
    required this.trending,
  });

  factory RecipeDataset.fromJson(Map<String, dynamic> json) =>
      _$RecipeDatasetFromJson(json);

  Map<String, dynamic> toJson() => _$RecipeDatasetToJson(this);
}
