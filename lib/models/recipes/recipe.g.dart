// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Recipe _$RecipeFromJson(Map<String, dynamic> json) => Recipe(
      author: json['author'] as String,
      categories: (json['categories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      dateUploaded: DateTime.parse(json['dateUploaded'] as String),
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => RecipeIngredient.fromJson(e as Map<String, dynamic>))
          .toList(),
      photographers: (json['photographers'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      reviews: (json['reviews'] as List<dynamic>)
          .map((e) => RecipeReview.fromJson(e as Map<String, dynamic>))
          .toList(),
      servings: json['servings'] as String,
      steps: (json['steps'] as List<dynamic>).map((e) => e as String).toList(),
      title: json['title'] as String,
      dateOfIssue: json['dateOfIssue'] as String?,
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
      'dateOfIssue': instance.dateOfIssue,
      'author': instance.author,
      'dateUploaded': instance.dateUploaded.toIso8601String(),
      'photographers': instance.photographers,
      'servings': instance.servings,
      'ingredients': instance.ingredients,
      'reviews': instance.reviews,
      'steps': instance.steps,
    };
