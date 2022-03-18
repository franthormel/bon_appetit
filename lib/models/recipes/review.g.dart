// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecipeReview _$RecipeReviewFromJson(Map<String, dynamic> json) => RecipeReview(
      date: DateTime.parse(json['date'] as String),
      review: json['review'] as String,
      author: json['author'] as String?,
      location: json['location'] as String?,
    );

Map<String, dynamic> _$RecipeReviewToJson(RecipeReview instance) =>
    <String, dynamic>{
      'author': instance.author,
      'date': instance.date.toIso8601String(),
      'location': instance.location,
      'review': instance.review,
    };
