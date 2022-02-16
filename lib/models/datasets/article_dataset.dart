import 'package:json_annotation/json_annotation.dart';

import '../articles/main_article.dart';
import '../articles/other_article.dart';

part 'article_dataset.g.dart';

@JsonSerializable()
class ArticleDataset {
  final MainArticle main;

  /// Usually there are four (4) articles
  final List<OtherArticle> others;

  ArticleDataset({
    required this.main,
    required this.others,
  });

  factory ArticleDataset.fromJson(Map<String, dynamic> json) =>
      _$ArticleDatasetFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleDatasetToJson(this);
}
