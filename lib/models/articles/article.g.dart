// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Article _$ArticleFromJson(Map<String, dynamic> json) => Article(
      author: json['author'] as String,
      category: json['category'] as String,
      content: json['content'] as String,
      dateUploaded: DateTime.parse(json['dateUploaded'] as String),
      id: json['id'] as String,
      imageUrl: json['imageUrl'] as String,
      subtitle: json['subtitle'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      title: json['title'] as String,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ArticleToJson(Article instance) => <String, dynamic>{
      'author': instance.author,
      'category': instance.category,
      'content': instance.content,
      'dateUploaded': instance.dateUploaded.toIso8601String(),
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'products': instance.products,
      'subtitle': instance.subtitle,
      'tags': instance.tags,
      'title': instance.title,
    };
