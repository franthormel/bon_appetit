import 'package:json_annotation/json_annotation.dart';

import 'recipe_rating.dart';

part 'recipe.g.dart';

@JsonSerializable()
class Recipe {
  final String description;
  final String imageUrl;
  final String title;

  // TODO Add date property

  /// Used for filtering recipes
  final List<String> categories;

  /// Used as a [Chip] label
  final String? tag;

  final RecipeRating? rating;

  Recipe({
    required this.categories,
    required this.description,
    required this.imageUrl,
    required this.title,
    this.rating,
    this.tag,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) => _$RecipeFromJson(json);

  Map<String, dynamic> toJson() => _$RecipeToJson(this);
}
