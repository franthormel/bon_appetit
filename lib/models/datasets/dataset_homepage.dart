import 'package:json_annotation/json_annotation.dart';

import '../articles/article.dart';
import '../articles/cooking.dart';
import '../articles/shopping.dart';
import '../videos/video.dart';
import 'models/dataset_recipe.dart';

part 'dataset_homepage.g.dart';

@JsonSerializable()
class HomepageDataset {

  ///  Six (6) articles are listed under
  ///  the 'We Just Love These' section
  final List<ShoppingArticle> products;

  /// Contains today's, trending, and suggested recipes.
  final RecipeDataset recipes;

  /// Five (5) articles are listed under
  /// the 'What to Read' section
  final List<Article> stories;

  /// Eight (8) articles are listed under
  /// the 'Cooking Tips & Techniques' section
  final List<CookingArticle> tips;

  /// Twelve (12) videos are listed under
  /// the 'What to Watch' section
  final List<VideoEntry> videos;

  HomepageDataset({
    required this.products,
    required this.recipes,
    required this.stories,
    required this.tips,
    required this.videos,
  });

  factory HomepageDataset.fromJson(Map<String, dynamic> json) =>
      _$HomepageDatasetFromJson(json);

  Map<String, dynamic> toJson() => _$HomepageDatasetToJson(this);
}
