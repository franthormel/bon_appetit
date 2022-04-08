// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DatasetSource _$DatasetSourceFromJson(Map<String, dynamic> json) =>
    DatasetSource(
      articles: (json['articles'] as List<dynamic>)
          .map((e) => Article.fromJson(e as Map<String, dynamic>))
          .toList(),
      recipes: (json['recipes'] as List<dynamic>)
          .map((e) => Recipe.fromJson(e as Map<String, dynamic>))
          .toList(),
      videos: (json['videos'] as List<dynamic>)
          .map((e) => Video.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DatasetSourceToJson(DatasetSource instance) =>
    <String, dynamic>{
      'articles': instance.articles,
      'recipes': instance.recipes,
      'videos': instance.videos,
    };
