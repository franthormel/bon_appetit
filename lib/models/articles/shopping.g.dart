// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShoppingArticle _$ShoppingArticleFromJson(Map<String, dynamic> json) =>
    ShoppingArticle(
      imageUrl: json['imageUrl'] as String,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      dateUploaded: DateTime.parse(json['dateUploaded'] as String),
      author: json['author'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      products: (json['products'] as List<dynamic>)
          .map((e) => ItemProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
      content: json['content'] as String,
    );

Map<String, dynamic> _$ShoppingArticleToJson(ShoppingArticle instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'dateUploaded': instance.dateUploaded.toIso8601String(),
      'author': instance.author,
      'tags': instance.tags,
      'products': instance.products,
      'content': instance.content,
    };
