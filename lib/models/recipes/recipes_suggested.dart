import 'package:json_annotation/json_annotation.dart';

import 'recipe_set.dart';

part 'recipes_suggested.g.dart';

@JsonSerializable()
class WhatToCookRecipes extends RecipeSet {
  WhatToCookRecipes({required recipes}) : super(recipes: recipes);

  factory WhatToCookRecipes.fromJson(Map<String, dynamic> json) =>
      _$WhatToCookRecipesFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$WhatToCookRecipesToJson(this);
}
