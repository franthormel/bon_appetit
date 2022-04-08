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
      id: json['id'] as String,
      imageUrl: json['imageUrl'] as String,
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => RecipeIngredient.fromJson(e as Map<String, dynamic>))
          .toList(),
      servings: json['servings'] as String,
      steps: (json['steps'] as List<dynamic>).map((e) => e as String).toList(),
      title: json['title'] as String,
      author: json['author'] as String?,
      dateIssue: json['dateIssue'] as String?,
      mainDescription: json['mainDescription'] as String?,
      nutritionServings: (json['nutritionServings'] as List<dynamic>?)
          ?.map(
              (e) => RecipeNutritionServing.fromJson(e as Map<String, dynamic>))
          .toList(),
      rating: json['rating'] == null
          ? null
          : RecipeRating.fromJson(json['rating'] as Map<String, dynamic>),
      reviews: (json['reviews'] as List<dynamic>?)
          ?.map((e) => RecipeReview.fromJson(e as Map<String, dynamic>))
          .toList(),
      tag: json['tag'] as String?,
      timeEntries: (json['timeEntries'] as List<dynamic>?)
          ?.map((e) => RecipeTime.fromJson(e as Map<String, dynamic>))
          .toList(),
      utensils: (json['utensils'] as List<dynamic>?)
          ?.map((e) => RecipeUtensil.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RecipeToJson(Recipe instance) => <String, dynamic>{
      'author': instance.author,
      'categories': instance.categories,
      'dateIssue': instance.dateIssue,
      'dateUploaded': instance.dateUploaded.toIso8601String(),
      'description': instance.description,
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'ingredients': instance.ingredients,
      'mainDescription': instance.mainDescription,
      'nutritionServings': instance.nutritionServings,
      'rating': instance.rating,
      'reviews': instance.reviews,
      'servings': instance.servings,
      'steps': instance.steps,
      'tag': instance.tag,
      'timeEntries': instance.timeEntries,
      'title': instance.title,
      'utensils': instance.utensils,
    };
