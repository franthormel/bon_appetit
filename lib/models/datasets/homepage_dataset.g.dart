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
      videos: VideosDataset.fromJson(json['videos'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HomepageDatasetToJson(HomepageDataset instance) =>
    <String, dynamic>{
      'articles': instance.articles,
      'recipes': instance.recipes,
      'videos': instance.videos,
    };
