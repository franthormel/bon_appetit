// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homepage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DatasetHomepage _$DatasetHomepageFromJson(Map<String, dynamic> json) =>
    DatasetHomepage(
      cooking: (json['cooking'] as List<dynamic>)
          .map((e) => Article.fromJson(e as Map<String, dynamic>))
          .toList(),
      recipes: DatasetRecipe.fromJson(json['recipes'] as Map<String, dynamic>),
      shopping: (json['shopping'] as List<dynamic>)
          .map((e) => Article.fromJson(e as Map<String, dynamic>))
          .toList(),
      stories: (json['stories'] as List<dynamic>)
          .map((e) => Article.fromJson(e as Map<String, dynamic>))
          .toList(),
      videos: (json['videos'] as List<dynamic>)
          .map((e) => Video.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DatasetHomepageToJson(DatasetHomepage instance) =>
    <String, dynamic>{
      'shopping': instance.shopping,
      'recipes': instance.recipes,
      'stories': instance.stories,
      'cooking': instance.cooking,
      'videos': instance.videos,
    };
