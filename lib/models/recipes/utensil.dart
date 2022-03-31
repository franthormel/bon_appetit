import 'package:json_annotation/json_annotation.dart';

import '../others/product_shop.dart';

part 'utensil.g.dart';

/// Contains the name of kitchen utensil, a url for its image, and a sponsored shopping item link.
@JsonSerializable()
class RecipeUtensil {
  final String imageUrl;
  final String name;
  final ProductShop shop;

  const RecipeUtensil({
    required this.imageUrl,
    required this.name,
    required this.shop,
  });

  factory RecipeUtensil.fromJson(Map<String, dynamic> json) =>
      _$RecipeUtensilFromJson(json);

  Map<String, dynamic> toJson() => _$RecipeUtensilToJson(this);
}
