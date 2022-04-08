// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homepage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DatasetHomepage _$DatasetHomepageFromJson(Map<String, dynamic> json) =>
    DatasetHomepage(
      cooking: (json['cooking'] as List<dynamic>)
          .map((e) => CookingArticle.fromJson(e as Map<String, dynamic>))
          .toList(),
      products: (json['products'] as List<dynamic>)
          .map((e) => ShoppingArticle.fromJson(e as Map<String, dynamic>))
          .toList(),
      recipes: DatasetRecipe.fromJson(json['recipes'] as Map<String, dynamic>),
      stories: (json['stories'] as List<dynamic>)
          .map((e) => Article.fromJson(e as Map<String, dynamic>))
          .toList(),
      videos: (json['videos'] as List<dynamic>)
          .map((e) => Video.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DatasetHomepageToJson(DatasetHomepage instance) =>
    <String, dynamic>{
      'products': instance.products,
      'recipes': instance.recipes,
      'stories': instance.stories,
      'cooking': instance.cooking,
      'videos': instance.videos,
    };
