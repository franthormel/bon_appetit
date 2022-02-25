import 'package:json_annotation/json_annotation.dart';

part 'recipe_rating.g.dart';

@JsonSerializable()
class RecipeRating {
  final int count;
  final double value;

  const RecipeRating({
    required this.count,
    required this.value,
  });

  factory RecipeRating.fromJson(Map<String, dynamic> json) =>
      _$RecipeRatingFromJson(json);

  Map<String, dynamic> toJson() => _$RecipeRatingToJson(this);

  String get text => "$count ($value)";
}
