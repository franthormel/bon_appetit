import 'package:json_annotation/json_annotation.dart';

import 'recipe.dart';

part 'recipe_set.g.dart';

@JsonSerializable()
class RecipeSet {
  List<Recipe> recipes;

  RecipeSet({required this.recipes});

  factory RecipeSet.fromJson(Map<String, dynamic> json) =>
      _$RecipeSetFromJson(json);

  Map<String, dynamic> toJson() => _$RecipeSetToJson(this);
}
