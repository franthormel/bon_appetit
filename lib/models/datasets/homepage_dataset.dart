import 'package:json_annotation/json_annotation.dart';

import 'article_dataset.dart';
import 'recipe_dataset.dart';

part 'homepage_dataset.g.dart';

@JsonSerializable()
class HomepageDataset {
  final ArticleDataset articles;
  final RecipeDataset recipes;

  HomepageDataset({
    required this.articles,
    required this.recipes,
  });

  factory HomepageDataset.fromJson(Map<String, dynamic> json) =>
      _$HomepageDatasetFromJson(json);

  Map<String, dynamic> toJson() => _$HomepageDatasetToJson(this);
}
