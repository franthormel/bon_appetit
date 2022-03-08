import 'package:json_annotation/json_annotation.dart';

import 'recipe_ingredient.dart';
import 'recipe_people.dart';
import 'recipe_rating.dart';
import 'recipe_review.dart';
import 'recipe_utensil.dart';

part 'recipe.g.dart';

@JsonSerializable()
class Recipe {
  final String description;
  final String imageUrl;
  final String title;

  /// Used for filtering recipes
  final List<String> categories;

  /// Typically tagged as:
  /// - Quick
  /// - Easy
  /// - Vegan
  /// Used as a [Chip] label.
  final String? tag;

  final RecipeRating? rating;

  // TODO: New info
  /// Issue publication's month and year if available.
  final String? dateIssue;
  final String? mainDescription;

  /// When the author created and uploaded this recipe. Should not be interchanged with [dateIssue] which is entirely different.
  final DateTime dateUploaded;

  /// Number of servings this recipe makes.
  /// Examples:
  /// - 8 servings
  /// - Makes 16
  /// - 4-6 servings
  final String servings;

  final List<RecipeIngredient> ingredients;
  final List<RecipeReview> reviews;

  /// In-order steps on how to create this recipe.
  final List<String> steps;

  final RecipePeople people;

  final List<RecipeUtensil>? utensils;

  Recipe({
    required this.categories,
    required this.dateUploaded,
    required this.description,
    required this.imageUrl,
    required this.ingredients,
    required this.people,
    required this.reviews,
    required this.servings,
    required this.steps,
    required this.title,
    this.dateIssue,
    this.mainDescription,
    this.rating,
    this.tag,
    this.utensils,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) => _$RecipeFromJson(json);

  Map<String, dynamic> toJson() => _$RecipeToJson(this);
}
