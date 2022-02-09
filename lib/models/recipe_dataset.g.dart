// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_dataset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecipeDataset _$RecipeDatasetFromJson(Map<String, dynamic> json) =>
    RecipeDataset(
      mainRecipe: Recipe.fromJson(json['mainRecipe'] as Map<String, dynamic>),
      otherMainRecipes: (json['otherMainRecipes'] as List<dynamic>)
          .map((e) => Recipe.fromJson(e as Map<String, dynamic>))
          .toList(),
      suggestedRecipes: (json['suggestedRecipes'] as List<dynamic>)
          .map((e) => Recipe.fromJson(e as Map<String, dynamic>))
          .toList(),
      trendingRecipes: (json['trendingRecipes'] as List<dynamic>)
          .map((e) => Recipe.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RecipeDatasetToJson(RecipeDataset instance) =>
    <String, dynamic>{
      'mainRecipe': instance.mainRecipe,
      'otherMainRecipes': instance.otherMainRecipes,
      'suggestedRecipes': instance.suggestedRecipes,
      'trendingRecipes': instance.trendingRecipes,
    };
