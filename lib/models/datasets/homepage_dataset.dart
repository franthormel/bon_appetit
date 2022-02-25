import 'package:json_annotation/json_annotation.dart';

import '../articles/article.dart';
import '../videos/video.dart';
import 'article_dataset.dart';
import 'recipe_dataset.dart';

part 'homepage_dataset.g.dart';

@JsonSerializable()
class HomepageDataset {
  final ArticleDataset articles;
  final RecipeDataset recipes;

  /// Twelve (12) videos are listed under
  /// the 'What to Watch' section
  final List<VideoEntry> videos;

  ///  Six (6) articles are listed under
  ///  the 'We Just Love These' section
  final List<Article> products;

  /// Six (6) articles are listed under
  /// the 'Cooking Tips & Techniques' section
  final List<Article> tips;

  HomepageDataset({
    required this.articles,
    required this.recipes,
    required this.videos,
    required this.products,
    required this.tips,
  });

  factory HomepageDataset.fromJson(Map<String, dynamic> json) =>
      _$HomepageDatasetFromJson(json);

  Map<String, dynamic> toJson() => _$HomepageDatasetToJson(this);
}
