import 'package:json_annotation/json_annotation.dart';

import '../others/item_product.dart';
import 'article_credits.dart';

part 'article.g.dart';

@JsonSerializable()
class Article {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String category;

  // TODO: New details
  final DateTime dateUploaded;
  final ArticleCredits credits;
  final List<String> tags;
  final List<ItemProduct>? products;
  final String content;

  Article({
    required this.category,
    required this.credits,
    required this.content,
    required this.dateUploaded,
    required this.imageUrl,
    required this.products,
    required this.subtitle,
    required this.tags,
    required this.title,
  });

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleToJson(this);
}
