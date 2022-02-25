import 'package:json_annotation/json_annotation.dart';

import '../articles/main_article.dart';
import '../articles/other_article.dart';

part 'article_dataset.g.dart';

@JsonSerializable()
class ArticleDataset {
  /// Displayed above the 'What to Read' header
  /// and is considered to be today's main article
  final MainArticle main;

  /// There are four (4) articles that
  /// accompanies the main article.
  final List<OtherArticle> others;

  ArticleDataset({
    required this.main,
    required this.others,
  });

  factory ArticleDataset.fromJson(Map<String, dynamic> json) =>
      _$ArticleDatasetFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleDatasetToJson(this);
}
