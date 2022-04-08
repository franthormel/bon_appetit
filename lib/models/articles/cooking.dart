import 'package:json_annotation/json_annotation.dart';

import '../others/product.dart';
import 'article.dart';

part 'cooking.g.dart';

@JsonSerializable()
class CookingArticle extends Article {
  CookingArticle({
    required String author,
    required String content,
    required DateTime dateUploaded,
    required String id,
    required String imageUrl,
    required List<Product>? products,
    required String subtitle,
    required List<String> tags,
    required String title,
  }) : super(
    author: author,
          category: "Cooking",
          content: content,
          dateUploaded: dateUploaded,
          id: id,
          imageUrl: imageUrl,
          products: products,
          subtitle: subtitle,
          tags: tags,
          title: title,
        );

  factory CookingArticle.fromJson(Map<String, dynamic> json) =>
      _$CookingArticleFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CookingArticleToJson(this);
}
