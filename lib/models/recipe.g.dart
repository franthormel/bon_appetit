// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Recipe _$RecipeFromJson(Map<String, dynamic> json) => Recipe(
      categories: (json['categories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      title: json['title'] as String,
      ratingCount: json['ratingCount'] as int,
      ratingValue: (json['ratingValue'] as num).toDouble(),
      tag: json['tag'] as String?,
    );

Map<String, dynamic> _$RecipeToJson(Recipe instance) => <String, dynamic>{
      'categories': instance.categories,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'title': instance.title,
      'ratingCount': instance.ratingCount,
      'ratingValue': instance.ratingValue,
      'tag': instance.tag,
    };
