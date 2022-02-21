import 'package:json_annotation/json_annotation.dart';

import '../recipes/recipe.dart';

part 'recipe_dataset.g.dart';

@JsonSerializable()
class RecipeDataset {
  final Recipe main;

  final List<Recipe> others;

  final List<Recipe> suggested;

  final List<Recipe> trending;

  // TODO Add recipe details either add them as a separate object here or as properties

  RecipeDataset({
    required this.main,
    required this.others,
    required this.suggested,
    required this.trending,
  });

  factory RecipeDataset.fromJson(Map<String, dynamic> json) =>
      _$RecipeDatasetFromJson(json);

  Map<String, dynamic> toJson() => _$RecipeDatasetToJson(this);
}
