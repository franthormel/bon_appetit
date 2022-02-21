import 'package:json_annotation/json_annotation.dart';

import '../recipes/index.dart';

part 'recipe_dataset.g.dart';

@JsonSerializable()
class RecipeDataset {
  final List<Recipe> main;
  final List<Recipe> suggested;
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
