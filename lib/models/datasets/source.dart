import 'package:json_annotation/json_annotation.dart';

import '../articles/article.dart';
import '../recipes/recipe.dart';
import '../videos/video.dart';

part 'source.g.dart';

@JsonSerializable()
class DatasetSource {
  final List<Article> articles;
  final List<Recipe> recipes;
  final List<Video> videos;

  DatasetSource({
    required this.articles,
    required this.recipes,
    required this.videos,
  });

  factory DatasetSource.fromJson(Map<String, dynamic> json) =>
      _$DatasetSourceFromJson(json);

  Map<String, dynamic> toJson() => _$DatasetSourceToJson(this);
}
