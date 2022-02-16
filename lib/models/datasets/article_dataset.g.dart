// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_dataset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleDataset _$ArticleDatasetFromJson(Map<String, dynamic> json) =>
    ArticleDataset(
      mainArticle:
          MainArticle.fromJson(json['mainArticle'] as Map<String, dynamic>),
      otherArticles: (json['otherArticles'] as List<dynamic>)
          .map((e) => OtherArticle.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ArticleDatasetToJson(ArticleDataset instance) =>
    <String, dynamic>{
      'mainArticle': instance.mainArticle,
      'otherArticles': instance.otherArticles,
    };
