// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_dataset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecipeDataset _$RecipeDatasetFromJson(Map<String, dynamic> json) =>
    RecipeDataset(
      main: Recipe.fromJson(json['main'] as Map<String, dynamic>),
      others: (json['others'] as List<dynamic>)
          .map((e) => Recipe.fromJson(e as Map<String, dynamic>))
          .toList(),
      suggested: (json['suggested'] as List<dynamic>)
          .map((e) => Recipe.fromJson(e as Map<String, dynamic>))
          .toList(),
      suggestedTags: (json['suggestedTags'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      trending: (json['trending'] as List<dynamic>)
          .map((e) => Recipe.fromJson(e as Map<String, dynamic>))
          .toList(),
      trendingTags: (json['trendingTags'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$RecipeDatasetToJson(RecipeDataset instance) =>
    <String, dynamic>{
      'main': instance.main,
      'others': instance.others,
      'suggested': instance.suggested,
      'suggestedTags': instance.suggestedTags,
      'trending': instance.trending,
      'trendingTags': instance.trendingTags,
    };
