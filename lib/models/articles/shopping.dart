import 'package:json_annotation/json_annotation.dart';

import '../others/item_product.dart';
import 'article.dart';
import 'article_credits.dart';

part 'shopping.g.dart';

@JsonSerializable()
class ShoppingArticle extends Article {
  ShoppingArticle({
    required String imageUrl,
    required String title,
    required String subtitle,
    required DateTime dateUploaded,
    required ArticleCredits credits,
    required List<String> tags,
    required List<ItemProduct> products,
    required String content,
  }) : super(
          imageUrl: imageUrl,
          title: title,
          subtitle: subtitle,
          category: "Shopping",
          dateUploaded: dateUploaded,
          credits: credits,
          tags: tags,
          products: products,
          content: content,
        );

  factory ShoppingArticle.fromJson(Map<String, dynamic> json) =>
      _$ShoppingArticleFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ShoppingArticleToJson(this);
}
