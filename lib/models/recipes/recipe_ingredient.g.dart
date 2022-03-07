// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_ingredient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecipeIngredient _$RecipeIngredientFromJson(Map<String, dynamic> json) =>
    RecipeIngredient(
      count: (json['count'] as num).toDouble(),
      ingredient: json['ingredient'] as String,
    );

Map<String, dynamic> _$RecipeIngredientToJson(RecipeIngredient instance) =>
    <String, dynamic>{
      'count': instance.count,
      'ingredient': instance.ingredient,
    };
