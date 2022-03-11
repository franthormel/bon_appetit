// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_credits.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageCredits _$ImageCreditsFromJson(Map<String, dynamic> json) => ImageCredits(
      author: json['author'] as String,
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

Map<String, dynamic> _$ImageCreditsToJson(ImageCredits instance) =>
    <String, dynamic>{
      'author': instance.author,
      'photographers': instance.photographers,
      'foodStylists': instance.foodStylists,
      'propStylists': instance.propStylists,
    };
