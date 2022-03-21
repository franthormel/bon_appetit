import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

import 'ingredient.dart';
import 'nutrition_serving.dart';
import 'rating.dart';
import 'review.dart';
import 'time.dart';
import 'utensil.dart';

part 'recipe.g.dart';

@JsonSerializable()
class Recipe {
  /// Used for filtering recipes
  final List<String> categories; // TODO: USE

  /// Issue publication's month and year if available.
  final String? dateIssue;

  /// When the author created and uploaded this recipe. Should not be interchanged with [dateIssue] which is different.
  final DateTime dateUploaded;
  final String description;
  final String imageUrl;
  final List<RecipeIngredient> ingredients; // TODO: USE

  /// Displayed next to main recipe. Should not interchanged with [description] which is different.
  final String? mainDescription;
  final List<RecipeNutritionServing>? nutritionServings; // TODO: USE
  final String? author;
  final RecipeRating? rating;
  final List<RecipeReview>? reviews; // TODO: USE

  /// Number of servings this recipe makes.
  /// Examples:
  /// - 8 servings
  /// - Makes 16
  /// - 4-6 servings
  final String servings; // TODO: USE

  /// Ordinal instructions on how to create this recipe.
  final List<String> steps; // TODO: USE

  /// Typically tagged as:
  /// - Quick
  /// - Easy
  /// - Vegan
  /// Used as a [Chip] label.
  final String? tag;
  final List<RecipeTime>? timeEntries;
  final String title;
  final List<RecipeUtensil>? utensils; // TODO: USE

  Recipe({
    required this.categories,
    required this.dateUploaded,
    required this.description,
    required this.imageUrl,
    required this.ingredients,
    required this.servings,
    required this.steps,
    required this.title,
    this.author,
    this.dateIssue,
    this.mainDescription,
    this.nutritionServings,
    this.rating,
    this.reviews,
    this.tag,
    this.timeEntries,
    this.utensils,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) => _$RecipeFromJson(json);

  Map<String, dynamic> toJson() => _$RecipeToJson(this);

  String? get issue => dateIssue != null ? "${dateIssue!} Issue" : null;

  String get heroTag => ObjectKey(this).toString();
}
