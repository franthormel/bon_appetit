// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_utensil_sponsor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecipeUtensilSponsor _$RecipeUtensilSponsorFromJson(
        Map<String, dynamic> json) =>
    RecipeUtensilSponsor(
      name: json['name'] as String,
      price: json['price'] as String,
      url: json['url'] as String,
      discountedPrice: json['discountedPrice'] as String?,
    );

Map<String, dynamic> _$RecipeUtensilSponsorToJson(
        RecipeUtensilSponsor instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'discountedPrice': instance.discountedPrice,
      'url': instance.url,
    };
