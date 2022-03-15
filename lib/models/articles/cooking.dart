import 'package:json_annotation/json_annotation.dart';

import '../others/item_product.dart';
import 'article.dart';

part 'cooking.g.dart';

@JsonSerializable()
class CookingArticle extends Article {
  CookingArticle({
    required String author,
    required String content,
    required DateTime dateUploaded,
    required String imageUrl,
    required List<ItemProduct>? products,
    required String subtitle,
    required List<String> tags,
    required String title,
  }) : super(
          author: author,
          category: "Cooking",
          content: content,
          dateUploaded: dateUploaded,
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
