import 'package:json_annotation/json_annotation.dart';

part 'recipe_review.g.dart';

@JsonSerializable()
class RecipeReview {
  final String review;
  final String author;
  final String? location;
  final DateTime date;

  const RecipeReview({
    required this.review,
    required this.author,
    required this.date,
    this.location,
  });

  factory RecipeReview.fromJson(Map<String, dynamic> json) =>
      _$RecipeReviewFromJson(json);

  Map<String, dynamic> toJson() => _$RecipeReviewToJson(this);
}
