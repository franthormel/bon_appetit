// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_rating.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecipeRating _$RecipeRatingFromJson(Map<String, dynamic> json) => RecipeRating(
      count: json['count'] as int,
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$RecipeRatingToJson(RecipeRating instance) =>
    <String, dynamic>{
      'count': instance.count,
      'value': instance.value,
    };
