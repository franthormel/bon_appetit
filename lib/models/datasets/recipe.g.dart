// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DatasetRecipe _$DatasetRecipeFromJson(Map<String, dynamic> json) =>
    DatasetRecipe(
      main: (json['main'] as List<dynamic>)
          .map((e) => Recipe.fromJson(e as Map<String, dynamic>))
          .toList(),
      suggested: (json['suggested'] as List<dynamic>)
          .map((e) => Recipe.fromJson(e as Map<String, dynamic>))
          .toList(),
      trending: (json['trending'] as List<dynamic>)
          .map((e) => Recipe.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DatasetRecipeToJson(DatasetRecipe instance) =>
    <String, dynamic>{
      'main': instance.main,
      'suggested': instance.suggested,
      'trending': instance.trending,
    };
