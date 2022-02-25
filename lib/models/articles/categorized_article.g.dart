// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categorized_article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategorizedArticle _$CategorizedArticleFromJson(Map<String, dynamic> json) =>
    CategorizedArticle(
      category: json['category'] as String,
      imageUrl: json['imageUrl'] as String,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
    );

Map<String, dynamic> _$CategorizedArticleToJson(CategorizedArticle instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'category': instance.category,
    };
