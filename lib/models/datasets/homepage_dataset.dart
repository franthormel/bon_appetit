import 'package:json_annotation/json_annotation.dart';

import 'article_dataset.dart';
import 'recipe_dataset.dart';
import 'videos_dataset.dart';

part 'homepage_dataset.g.dart';

@JsonSerializable()
class HomepageDataset {
  final ArticleDataset article;
  final RecipeDataset recipe;
  final VideosDataset video;

  HomepageDataset({
    required this.article,
    required this.recipe,
    required this.video,
  });

  factory HomepageDataset.fromJson(Map<String, dynamic> json) =>
      _$HomepageDatasetFromJson(json);

  Map<String, dynamic> toJson() => _$HomepageDatasetToJson(this);
}
