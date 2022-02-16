import 'package:json_annotation/json_annotation.dart';

import '../articles/main_article.dart';
import '../articles/other_article.dart';

part 'article_dataset.g.dart';

@JsonSerializable()
class ArticleDataset {
  final MainArticle mainArticle;
  final List<OtherArticle> otherArticles;

  ArticleDataset({
    required this.mainArticle,
    required this.otherArticles,
  });

  factory ArticleDataset.fromJson(Map<String, dynamic> json) =>
      _$ArticleDatasetFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleDatasetToJson(this);
}
