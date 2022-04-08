// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cooking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CookingArticle _$CookingArticleFromJson(Map<String, dynamic> json) =>
    CookingArticle(
      author: json['author'] as String,
      content: json['content'] as String,
      dateUploaded: DateTime.parse(json['dateUploaded'] as String),
      id: json['id'] as String,
      imageUrl: json['imageUrl'] as String,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      subtitle: json['subtitle'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      title: json['title'] as String,
    );

Map<String, dynamic> _$CookingArticleToJson(CookingArticle instance) =>
    <String, dynamic>{
      'author': instance.author,
      'content': instance.content,
      'dateUploaded': instance.dateUploaded.toIso8601String(),
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'products': instance.products,
      'subtitle': instance.subtitle,
      'tags': instance.tags,
      'title': instance.title,
    };
