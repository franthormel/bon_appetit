// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Article _$ArticleFromJson(Map<String, dynamic> json) => Article(
      category: json['category'] as String,
      credits: ArticleCredits.fromJson(json['credits'] as Map<String, dynamic>),
      content: json['content'] as String,
      dateUploaded: DateTime.parse(json['dateUploaded'] as String),
      imageUrl: json['imageUrl'] as String,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => ItemProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
      subtitle: json['subtitle'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      title: json['title'] as String,
    );

Map<String, dynamic> _$ArticleToJson(Article instance) => <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'category': instance.category,
      'dateUploaded': instance.dateUploaded.toIso8601String(),
      'credits': instance.credits,
      'tags': instance.tags,
      'products': instance.products,
      'content': instance.content,
    };
