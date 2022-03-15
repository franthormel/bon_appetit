// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_utensil.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecipeUtensil _$RecipeUtensilFromJson(Map<String, dynamic> json) =>
    RecipeUtensil(
      imageUrl: json['imageUrl'] as String,
      name: json['name'] as String,
      shop: ItemShop.fromJson(json['shop'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RecipeUtensilToJson(RecipeUtensil instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'name': instance.name,
      'shop': instance.shop,
    };
