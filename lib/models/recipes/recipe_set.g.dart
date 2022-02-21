// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecipeSet _$RecipeSetFromJson(Map<String, dynamic> json) => RecipeSet(
      recipes: (json['recipes'] as List<dynamic>)
          .map((e) => Recipe.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RecipeSetToJson(RecipeSet instance) => <String, dynamic>{
      'recipes': instance.recipes,
    };
