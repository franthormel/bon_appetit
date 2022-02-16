import 'package:json_annotation/json_annotation.dart';

import 'article.dart';

part 'main_article.g.dart';

@JsonSerializable()
class MainArticle extends Article {
  MainArticle({
    required String imageUrl,
    required String title,
    required String subtitle,
  }) : super(imageUrl: imageUrl, title: title, subtitle: subtitle);

  factory MainArticle.fromJson(Map<String, dynamic> json) =>
      _$MainArticleFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MainArticleToJson(this);
}
