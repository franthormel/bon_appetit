// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'other_article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtherArticle _$OtherArticleFromJson(Map<String, dynamic> json) => OtherArticle(
      category: json['category'] as String,
      imageUrl: json['imageUrl'] as String,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
    );

Map<String, dynamic> _$OtherArticleToJson(OtherArticle instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'category': instance.category,
    };
