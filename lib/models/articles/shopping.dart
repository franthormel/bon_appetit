import 'package:json_annotation/json_annotation.dart';

import 'article.dart';

part 'shopping.g.dart';

@JsonSerializable()
class ShoppingArticle extends Article {
  ShoppingArticle({
    required String imageUrl,
    required String title,
    required String subtitle,
  }) : super(
            imageUrl: imageUrl,
            title: title,
            subtitle: subtitle,
            category: "Shopping");

  factory ShoppingArticle.fromJson(Map<String, dynamic> json) =>
      _$ShoppingArticleFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ShoppingArticleToJson(this);
}
