// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_dataset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleDataset _$ArticleDatasetFromJson(Map<String, dynamic> json) =>
    ArticleDataset(
      main: Article.fromJson(json['main'] as Map<String, dynamic>),
      others: (json['others'] as List<dynamic>)
          .map((e) => CategorizedArticle.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ArticleDatasetToJson(ArticleDataset instance) =>
    <String, dynamic>{
      'main': instance.main,
      'others': instance.others,
    };
