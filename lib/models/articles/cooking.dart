import 'package:json_annotation/json_annotation.dart';

import '../others/item_product.dart';
import 'article.dart';
import 'article_credits.dart';

part 'cooking.g.dart';

@JsonSerializable()
class CookingArticle extends Article {
  CookingArticle({
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
          category: "Cooking",
          dateUploaded: dateUploaded,
          credits: credits,
          tags: tags,
          products: products,
          content: content,
        );

  factory CookingArticle.fromJson(Map<String, dynamic> json) =>
      _$CookingArticleFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CookingArticleToJson(this);
}
