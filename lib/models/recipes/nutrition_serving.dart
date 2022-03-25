import 'package:json_annotation/json_annotation.dart';

part 'nutrition_serving.g.dart';

@JsonSerializable()
class RecipeNutritionServing {
  /// e.g. Calories, Fat, Saturated Fat, etc.
  final String name;

  /// Unit of measurement e.g. kcal, g, mg, etc.
  final String unit;
  final String value;

  const RecipeNutritionServing({
    required this.name,
    required this.unit,
    required this.value,
  });

  factory RecipeNutritionServing.fromJson(Map<String, dynamic> json) =>
      _$RecipeNutritionServingFromJson(json);

  Map<String, dynamic> toJson() => _$RecipeNutritionServingToJson(this);

  @override
  String toString() => "$name ($unit) $value";
}
