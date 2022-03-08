// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_utensil.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecipeUtensil _$RecipeUtensilFromJson(Map<String, dynamic> json) =>
    RecipeUtensil(
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String,
      sponsor: RecipeUtensilSponsor.fromJson(
          json['sponsor'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RecipeUtensilToJson(RecipeUtensil instance) =>
    <String, dynamic>{
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'sponsor': instance.sponsor,
    };
