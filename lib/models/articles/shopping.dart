import 'package:json_annotation/json_annotation.dart';

import '../others/item_product.dart';
import 'article.dart';

part 'shopping.g.dart';

@JsonSerializable()
class ShoppingArticle extends Article {
  ShoppingArticle({
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
          category: "Shopping",
          content: content,
          dateUploaded: dateUploaded,
          imageUrl: imageUrl,
          products: products,
          subtitle: subtitle,
          tags: tags,
          title: title,
        );

  factory ShoppingArticle.fromJson(Map<String, dynamic> json) =>
      _$ShoppingArticleFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ShoppingArticleToJson(this);
}
