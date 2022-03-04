// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dataset_recipe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecipeDataset _$RecipeDatasetFromJson(Map<String, dynamic> json) =>
    RecipeDataset(
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

Map<String, dynamic> _$RecipeDatasetToJson(RecipeDataset instance) =>
    <String, dynamic>{
      'main': instance.main,
      'suggested': instance.suggested,
      'trending': instance.trending,
    };
