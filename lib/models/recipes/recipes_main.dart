import 'package:json_annotation/json_annotation.dart';

import 'recipe_set.dart';

part 'recipes_main.g.dart';

@JsonSerializable()
class MainRecipes extends RecipeSet {
  MainRecipes({required recipes}) : super(recipes: recipes);

  factory MainRecipes.fromJson(Map<String, dynamic> json) =>
      _$MainRecipesFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MainRecipesToJson(this);
}
