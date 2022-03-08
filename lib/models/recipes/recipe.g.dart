// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Recipe _$RecipeFromJson(Map<String, dynamic> json) => Recipe(
      categories: (json['categories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      dateUploaded: DateTime.parse(json['dateUploaded'] as String),
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => RecipeIngredient.fromJson(e as Map<String, dynamic>))
          .toList(),
      people: RecipePeople.fromJson(json['people'] as Map<String, dynamic>),
      reviews: (json['reviews'] as List<dynamic>)
          .map((e) => RecipeReview.fromJson(e as Map<String, dynamic>))
          .toList(),
      servings: json['servings'] as String,
      steps: (json['steps'] as List<dynamic>).map((e) => e as String).toList(),
      title: json['title'] as String,
      dateIssue: json['dateIssue'] as String?,
      mainDescription: json['mainDescription'] as String?,
      rating: json['rating'] == null
          ? null
          : RecipeRating.fromJson(json['rating'] as Map<String, dynamic>),
      tag: json['tag'] as String?,
      utensils: (json['utensils'] as List<dynamic>?)
          ?.map((e) => RecipeUtensil.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RecipeToJson(Recipe instance) => <String, dynamic>{
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'title': instance.title,
      'categories': instance.categories,
      'tag': instance.tag,
      'rating': instance.rating,
      'dateIssue': instance.dateIssue,
      'mainDescription': instance.mainDescription,
      'dateUploaded': instance.dateUploaded.toIso8601String(),
      'servings': instance.servings,
      'ingredients': instance.ingredients,
      'reviews': instance.reviews,
      'steps': instance.steps,
      'people': instance.people,
      'utensils': instance.utensils,
    };
