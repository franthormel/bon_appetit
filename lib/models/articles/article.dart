import 'package:json_annotation/json_annotation.dart';

import '../others/item_product.dart';

part 'article.g.dart';

@JsonSerializable()
class Article {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String category;

  final DateTime dateUploaded;
  final String author;
  final List<String> tags;
  final List<ItemProduct>? products;
  final String content;

  Article({
    required this.author,
    required this.category,
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
