import 'package:json_annotation/json_annotation.dart';

import 'recipe_utensil_sponsor.dart';

part 'recipe_utensil.g.dart';

/// Contains the name of kitchen utensil, a url for its image, and a sponsored shopping item link.
@JsonSerializable()
class RecipeUtensil {
  final String name;
  final String imageUrl;
  final RecipeUtensilSponsor sponsor;

  const RecipeUtensil({
    required this.name,
    required this.imageUrl,
    required this.sponsor,
  });

  factory RecipeUtensil.fromJson(Map<String, dynamic> json) =>
      _$RecipeUtensilFromJson(json);

  Map<String, dynamic> toJson() => _$RecipeUtensilToJson(this);
}
