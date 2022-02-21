import 'package:json_annotation/json_annotation.dart';

import '../recipes/recipe.dart';

part 'recipe_dataset.g.dart';

@JsonSerializable()
class RecipeDataset {
  final Recipe main;


  final List<Recipe> others;

  final List<Recipe> suggested;
  final List<String> suggestedTags;


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
