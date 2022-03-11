import 'package:json_annotation/json_annotation.dart';

part 'article.g.dart';

@JsonSerializable()
class Article {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String category;

  Article({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.category,
  });

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleToJson(this);
}
