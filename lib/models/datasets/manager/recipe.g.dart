// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DatasetRecipeManager _$DatasetRecipeManagerFromJson(
        Map<String, dynamic> json) =>
    DatasetRecipeManager(
      main: (json['main'] as List<dynamic>).map((e) => e as String).toList(),
      suggested:
          (json['suggested'] as List<dynamic>).map((e) => e as String).toList(),
      trending:
          (json['trending'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$DatasetRecipeManagerToJson(
        DatasetRecipeManager instance) =>
    <String, dynamic>{
      'main': instance.main,
      'suggested': instance.suggested,
      'trending': instance.trending,
    };
