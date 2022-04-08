// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DatasetSource _$DatasetSourceFromJson(Map<String, dynamic> json) =>
    DatasetSource(
      articles:
          (json['articles'] as List<dynamic>).map((e) => e as String).toList(),
      recipes:
          (json['recipes'] as List<dynamic>).map((e) => e as String).toList(),
      videos:
          (json['videos'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$DatasetSourceToJson(DatasetSource instance) =>
    <String, dynamic>{
      'recipes': instance.recipes,
      'articles': instance.articles,
      'videos': instance.videos,
    };
