import 'package:json_annotation/json_annotation.dart';

import '../articles/article.dart';
import '../videos/video.dart';
import 'recipe.dart';

part 'homepage.g.dart';

// NOTE: Used by HomePage

@JsonSerializable()
class DatasetHomepage {
  ///  Six (6) articles are listed under
  ///  the 'We Just Love These' section
  final List<Article> shopping;

  /// Contains today's, trending, and suggested recipes.
  final DatasetRecipe recipes;

  /// Five (5) articles are listed under
  /// the 'What to Read' section
  final List<Article> stories;

  /// Eight (8) articles are listed under
  /// the 'Cooking Tips & Techniques' section
  final List<Article> cooking;

  /// Twelve (12) videos are listed under
  /// the 'What to Watch' section
  final List<Video> videos;

  DatasetHomepage({
    required this.cooking,
    required this.recipes,
    required this.shopping,
    required this.stories,
    required this.videos,
  });

  factory DatasetHomepage.fromJson(Map<String, dynamic> json) =>
      _$DatasetHomepageFromJson(json);

  Map<String, dynamic> toJson() => _$DatasetHomepageToJson(this);
}
