import 'package:json_annotation/json_annotation.dart';

part 'recipe_time.g.dart';

@JsonSerializable()
class RecipeTime {
  final String name;
  final String value;

  const RecipeTime({required this.name, required this.value});

  factory RecipeTime.fromJson(Map<String, dynamic> json) =>
      _$RecipeTimeFromJson(json);

  Map<String, dynamic> toJson() => _$RecipeTimeToJson(this);
}
