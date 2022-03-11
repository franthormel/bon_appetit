// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_credits.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductCredits _$ProductCreditsFromJson(Map<String, dynamic> json) =>
    ProductCredits(
      photographers: (json['photographers'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      foodStylists: (json['foodStylists'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      propStylists: (json['propStylists'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ProductCreditsToJson(ProductCredits instance) =>
    <String, dynamic>{
      'photographers': instance.photographers,
      'foodStylists': instance.foodStylists,
      'propStylists': instance.propStylists,
    };
