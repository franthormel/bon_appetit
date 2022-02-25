import 'package:json_annotation/json_annotation.dart';

import 'article.dart';

part 'categorized_article.g.dart';

@JsonSerializable()
class CategorizedArticle extends Article {
  final String category;

  CategorizedArticle({
    required this.category,
    required String imageUrl,
    required String title,
    required String subtitle,
  }) : super(imageUrl: imageUrl, title: title, subtitle: subtitle);

  factory CategorizedArticle.fromJson(Map<String, dynamic> json) =>
      _$CategorizedArticleFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CategorizedArticleToJson(this);
}
