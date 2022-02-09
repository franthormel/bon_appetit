import 'package:json_annotation/json_annotation.dart';

part 'recipe.g.dart';

@JsonSerializable()
class Recipe {
  final String description;
  final String imageUrl;
  final String title;

  /// Used for filtering recipes
  final List<String> categories;

  /// Used as a [Chip] label
  final String? tag;

  final int ratingCount;
  final double ratingValue;

  Recipe({
    required this.categories,
    required this.description,
    required this.imageUrl,
    required this.title,
    required this.ratingCount,
    required this.ratingValue,
    this.tag,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) => _$RecipeFromJson(json);

  Map<String, dynamic> toJson() => _$RecipeToJson(this);

  String get rating => "$ratingValue ($ratingCount)";
}
