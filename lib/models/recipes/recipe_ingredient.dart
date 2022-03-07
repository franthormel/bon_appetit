import 'package:json_annotation/json_annotation.dart';

part 'recipe_ingredient.g.dart';

@JsonSerializable()
class RecipeIngredient {
  final double count;
  final String ingredient;

  const RecipeIngredient({required this.count, required this.ingredient});

  factory RecipeIngredient.fromJson(Map<String, dynamic> json) =>
      _$RecipeIngredientFromJson(json);

  Map<String, dynamic> toJson() => _$RecipeIngredientToJson(this);
}
