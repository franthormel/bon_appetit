// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dataset_homepage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomepageDataset _$HomepageDatasetFromJson(Map<String, dynamic> json) =>
    HomepageDataset(
      products: (json['products'] as List<dynamic>)
          .map((e) => ShoppingArticle.fromJson(e as Map<String, dynamic>))
          .toList(),
      recipes: RecipeDataset.fromJson(json['recipes'] as Map<String, dynamic>),
      stories: (json['stories'] as List<dynamic>)
          .map((e) => Article.fromJson(e as Map<String, dynamic>))
          .toList(),
      tips: (json['tips'] as List<dynamic>)
          .map((e) => CookingArticle.fromJson(e as Map<String, dynamic>))
          .toList(),
      videos: (json['videos'] as List<dynamic>)
          .map((e) => VideoEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomepageDatasetToJson(HomepageDataset instance) =>
    <String, dynamic>{
      'products': instance.products,
      'recipes': instance.recipes,
      'stories': instance.stories,
      'tips': instance.tips,
      'videos': instance.videos,
    };
