import 'package:json_annotation/json_annotation.dart';

import 'article.dart';

part 'other_article.g.dart';

@JsonSerializable()
class OtherArticle extends Article {
  final String category;

  OtherArticle({
    required this.category,
    required String imageUrl,
    required String title,
    required String subtitle,
  }) : super(imageUrl: imageUrl, title: title, subtitle: subtitle);

  factory OtherArticle.fromJson(Map<String, dynamic> json) => _$OtherArticleFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$OtherArticleToJson(this);
}
