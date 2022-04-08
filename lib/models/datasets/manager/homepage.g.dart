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
      products:
          (json['products'] as List<dynamic>).map((e) => e as String).toList(),
      recipes: DatasetRecipeManager.fromJson(
          json['recipes'] as Map<String, dynamic>),
      stories:
          (json['stories'] as List<dynamic>).map((e) => e as String).toList(),
      videos:
          (json['videos'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$DatasetHomepageManagerToJson(
        DatasetHomepageManager instance) =>
    <String, dynamic>{
      'recipes': instance.recipes,
      'cooking': instance.cooking,
      'products': instance.products,
      'stories': instance.stories,
      'videos': instance.videos,
    };
