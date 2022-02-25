import 'package:json_annotation/json_annotation.dart';

import '../articles/article.dart';
import '../articles/categorized_article.dart';

part 'article_dataset.g.dart';

@JsonSerializable()
class ArticleDataset {
  /// Displayed above the 'What to Read' header
  /// and is considered to be today's main article
  final Article main;

  /// There are four (4) articles that
  /// accompanies the main article.
  final List<CategorizedArticle> others;

  ArticleDataset({
    required this.main,
    required this.others,
  });

  factory ArticleDataset.fromJson(Map<String, dynamic> json) =>
      _$ArticleDatasetFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleDatasetToJson(this);
}
