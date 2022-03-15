import 'package:json_annotation/json_annotation.dart';

import '../others/item_shop.dart';

part 'recipe_utensil.g.dart';

/// Contains the name of kitchen utensil, a url for its image, and a sponsored shopping item link.
@JsonSerializable()
class RecipeUtensil {
  final String imageUrl;
  final String name;
  final ItemShop shop;

  const RecipeUtensil({
    required this.imageUrl,
    required this.name,
    required this.shop,
  });

  factory RecipeUtensil.fromJson(Map<String, dynamic> json) =>
      _$RecipeUtensilFromJson(json);

  Map<String, dynamic> toJson() => _$RecipeUtensilToJson(this);
}
