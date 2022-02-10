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
      rating: json['rating'] == null
          ? null
          : RecipeRating.fromJson(json['rating'] as Map<String, dynamic>),
      tag: json['tag'] as String?,
    );

Map<String, dynamic> _$RecipeToJson(Recipe instance) => <String, dynamic>{
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'title': instance.title,
      'categories': instance.categories,
      'tag': instance.tag,
      'rating': instance.rating,
    };
