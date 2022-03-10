// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecipeReview _$RecipeReviewFromJson(Map<String, dynamic> json) => RecipeReview(
      review: json['review'] as String,
      author: json['author'] as String?,
      date: DateTime.parse(json['date'] as String),
      location: json['location'] as String?,
    );

Map<String, dynamic> _$RecipeReviewToJson(RecipeReview instance) =>
    <String, dynamic>{
      'review': instance.review,
      'author': instance.author,
      'location': instance.location,
      'date': instance.date.toIso8601String(),
    };
