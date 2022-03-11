// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cooking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CookingArticle _$CookingArticleFromJson(Map<String, dynamic> json) =>
    CookingArticle(
      imageUrl: json['imageUrl'] as String,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
    );

Map<String, dynamic> _$CookingArticleToJson(CookingArticle instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'title': instance.title,
      'subtitle': instance.subtitle,
    };
