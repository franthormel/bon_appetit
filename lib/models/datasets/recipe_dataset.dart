import 'package:json_annotation/json_annotation.dart';

import '../recipes/recipe.dart';

part 'recipe_dataset.g.dart';

@JsonSerializable()
class RecipeDataset {
  /// Today's recipe
  final Recipe main;

  /// Accompanies 'Today's Recipe' on the side
  /// Usually there are three (3) other recipes
  final List<Recipe> others;

  /// List of recipes on 'What to cook today/tonight'
  /// Usually there are around twenty (~20) recipes
  final List<Recipe> suggested;
  final List<String> suggestedTags;

  /// List of recipes on 'Trending Now'
  /// Usually there are around twenty (~20) recipes
  final List<Recipe> trending;
  final List<String> trendingTags;

  // TODO Add recipe details either add them as a separate object here or as properties

  RecipeDataset({
    required this.main,
    required this.others,
    required this.suggested,
    required this.suggestedTags,
    required this.trending,
    required this.trendingTags,
  });

  factory RecipeDataset.fromJson(Map<String, dynamic> json) =>
      _$RecipeDatasetFromJson(json);

  Map<String, dynamic> toJson() => _$RecipeDatasetToJson(this);
}
