// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dataset_homepage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomepageDataset _$HomepageDatasetFromJson(Map<String, dynamic> json) =>
    HomepageDataset(
      stories: (json['stories'] as List<dynamic>)
          .map((e) => CategorizedArticle.fromJson(e as Map<String, dynamic>))
          .toList(),
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
      'recipes': instance.recipes,
      'stories': instance.stories,
      'videos': instance.videos,
      'products': instance.products,
      'tips': instance.tips,
    };
