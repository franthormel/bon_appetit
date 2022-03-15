// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_credits.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleCredits _$ArticleCreditsFromJson(Map<String, dynamic> json) =>
    ArticleCredits(
      author: json['author'] as String,
      illustrator: json['illustrator'] as String?,
      photographer: json['photographer'] as String?,
    );

Map<String, dynamic> _$ArticleCreditsToJson(ArticleCredits instance) =>
    <String, dynamic>{
      'author': instance.author,
      'illustrator': instance.illustrator,
      'photographer': instance.photographer,
    };
