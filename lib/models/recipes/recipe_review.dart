import 'package:json_annotation/json_annotation.dart';

part 'recipe_review.g.dart';

@JsonSerializable()
class RecipeReview {
  final String? author;
  final DateTime date;
  final String? location;
  final String review;

  const RecipeReview({
    required this.date,
    required this.review,
    this.author,
    this.location,
  });

  factory RecipeReview.fromJson(Map<String, dynamic> json) =>
      _$RecipeReviewFromJson(json);

  Map<String, dynamic> toJson() => _$RecipeReviewToJson(this);
}
