import 'package:json_annotation/json_annotation.dart';

part 'recipe.g.dart';

@JsonSerializable()
class Recipe {
  /// Used for filtering recipes
  final List<String> categories;
  final String description;
  final String imageUrl;
  final String title;

  final int ratingCount;
  final double ratingValue;

  /// Used as a [Chip] label
  final String? tag;

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
