import 'package:json_annotation/json_annotation.dart';

import 'recipe_set.dart';

part 'recipes_trending.g.dart';

@JsonSerializable()
class TrendingRecipes extends RecipeSet {
  TrendingRecipes({required recipes}) : super(recipes: recipes);

  factory TrendingRecipes.fromJson(Map<String, dynamic> json) =>
      _$TrendingRecipesFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TrendingRecipesToJson(this);
}
