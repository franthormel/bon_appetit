// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homepage_dataset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomepageDataset _$HomepageDatasetFromJson(Map<String, dynamic> json) =>
    HomepageDataset(
      articles:
          ArticleDataset.fromJson(json['articles'] as Map<String, dynamic>),
      recipes: RecipeDataset.fromJson(json['recipes'] as Map<String, dynamic>),
      videos: (json['videos'] as List<dynamic>)
          .map((e) => VideoEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
      products: (json['products'] as List<dynamic>)
          .map((e) => Article.fromJson(e as Map<String, dynamic>))
          .toList(),
      tips: (json['tips'] as List<dynamic>)
          .map((e) => Article.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomepageDatasetToJson(HomepageDataset instance) =>
    <String, dynamic>{
      'articles': instance.articles,
      'recipes': instance.recipes,
      'videos': instance.videos,
      'products': instance.products,
      'tips': instance.tips,
    };
