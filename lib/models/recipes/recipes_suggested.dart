import 'package:json_annotation/json_annotation.dart';

import 'recipe_set.dart';

part 'recipes_suggested.g.dart';

/// List of recipes on 'What to cook today/tonight'
/// Usually there are around twenty (~20) recipes
@JsonSerializable()
class WhatToCookRecipes extends RecipeSet {
  WhatToCookRecipes({required recipes}) : super(recipes: recipes);

  factory WhatToCookRecipes.fromJson(Map<String, dynamic> json) =>
      _$WhatToCookRecipesFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$WhatToCookRecipesToJson(this);
}
