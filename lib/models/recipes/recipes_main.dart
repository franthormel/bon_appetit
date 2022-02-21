import 'package:json_annotation/json_annotation.dart';

import 'recipe_set.dart';

part 'recipes_main.g.dart';

/// The first entry in the list of recipes is considered "Today's Recipe"
/// The other three (3) recipes are displayed on the right side of "Today's Recipe"
@JsonSerializable()
class MainRecipes extends RecipeSet {
  MainRecipes({required recipes}) : super(recipes: recipes);

  factory MainRecipes.fromJson(Map<String, dynamic> json) =>
      _$MainRecipesFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MainRecipesToJson(this);
}
