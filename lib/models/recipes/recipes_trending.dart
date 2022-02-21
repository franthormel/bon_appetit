import 'package:json_annotation/json_annotation.dart';

import 'recipe_set.dart';

part 'recipes_trending.g.dart';

/// List of recipes on 'Trending Now'
/// Usually there are around twenty (~20) recipes
@JsonSerializable()
class TrendingRecipes extends RecipeSet {
  TrendingRecipes({required recipes}) : super(recipes: recipes);

  factory TrendingRecipes.fromJson(Map<String, dynamic> json) =>
      _$TrendingRecipesFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TrendingRecipesToJson(this);
}
