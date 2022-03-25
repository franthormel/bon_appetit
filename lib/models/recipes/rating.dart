import 'package:json_annotation/json_annotation.dart';

part 'rating.g.dart';

@JsonSerializable()
class RecipeRating {
  final String count;
  final String value;

  const RecipeRating({required this.count, required this.value});

  factory RecipeRating.fromJson(Map<String, dynamic> json) =>
      _$RecipeRatingFromJson(json);

  Map<String, dynamic> toJson() => _$RecipeRatingToJson(this);

  @override
  String toString() => "$count ($value)";
}
