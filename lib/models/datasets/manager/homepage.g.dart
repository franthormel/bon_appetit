// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homepage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DatasetHomepageManager _$DatasetHomepageManagerFromJson(
        Map<String, dynamic> json) =>
    DatasetHomepageManager(
      cooking:
          (json['cooking'] as List<dynamic>).map((e) => e as String).toList(),
      recipes: DatasetRecipeManager.fromJson(
          json['recipes'] as Map<String, dynamic>),
      shopping:
          (json['shopping'] as List<dynamic>).map((e) => e as String).toList(),
      stories:
          (json['stories'] as List<dynamic>).map((e) => e as String).toList(),
      videos:
          (json['videos'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$DatasetHomepageManagerToJson(
        DatasetHomepageManager instance) =>
    <String, dynamic>{
      'shopping': instance.shopping,
      'recipes': instance.recipes,
      'stories': instance.stories,
      'cooking': instance.cooking,
      'videos': instance.videos,
    };
