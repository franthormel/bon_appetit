// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homepage_dataset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomepageDataset _$HomepageDatasetFromJson(Map<String, dynamic> json) =>
    HomepageDataset(
      article: ArticleDataset.fromJson(json['article'] as Map<String, dynamic>),
      recipe: RecipeDataset.fromJson(json['recipe'] as Map<String, dynamic>),
      video: VideosDataset.fromJson(json['video'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HomepageDatasetToJson(HomepageDataset instance) =>
    <String, dynamic>{
      'article': instance.article,
      'recipe': instance.recipe,
      'video': instance.video,
    };
