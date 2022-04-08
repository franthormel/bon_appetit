import 'package:json_annotation/json_annotation.dart';

import 'recipe.dart';

part 'homepage.g.dart';

@JsonSerializable()
// Ordering of data MATTERS for this class.
class DatasetHomepageManager {
  final DatasetRecipeManager recipes;

  final List<String> cooking;
  final List<String> products;
  final List<String> stories;
  final List<String> videos;

  DatasetHomepageManager({
    required this.cooking,
    required this.products,
    required this.recipes,
    required this.stories,
    required this.videos,
  });

  factory DatasetHomepageManager.fromJson(Map<String, dynamic> json) =>
      _$DatasetHomepageManagerFromJson(json);

  Map<String, dynamic> toJson() => _$DatasetHomepageManagerToJson(this);
}
