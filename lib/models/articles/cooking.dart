import 'package:json_annotation/json_annotation.dart';

import 'article.dart';

part 'cooking.g.dart';

@JsonSerializable()
class CookingArticle extends Article {
  CookingArticle({
    required String imageUrl,
    required String title,
    required String subtitle,
  }) : super(
            imageUrl: imageUrl,
            title: title,
            subtitle: subtitle,
            category: "Cooking");

  factory CookingArticle.fromJson(Map<String, dynamic> json) =>
      _$CookingArticleFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CookingArticleToJson(this);
}
