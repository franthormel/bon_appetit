import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

part 'review.g.dart';

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

  @override
  String toString() {
    final authorText = author != null ? "$author · " : "";
    final locationText = location != null ? "$location · " : "";
    final dateText = DateFormat.yMMMMd().format(date);

    return "$authorText$locationText$dateText";
  }
}
