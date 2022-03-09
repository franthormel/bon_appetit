import 'package:json_annotation/json_annotation.dart';

part 'recipe_utensil_sponsor.g.dart';

/// Contains the details of a kitchen utensil's affiliation link.
@JsonSerializable()
class RecipeUtensilSponsor {
  // Name of the site. e.g. Amazon
  final String name;

  // In U.S. dollars ($)
  final String price;
  final String? discountedPrice;

  // Item's link to the seller's site.
  final String url;

  const RecipeUtensilSponsor({
    required this.name,
    required this.price,
    required this.url,
    this.discountedPrice,
  });

  factory RecipeUtensilSponsor.fromJson(Map<String, dynamic> json) =>
      _$RecipeUtensilSponsorFromJson(json);

  Map<String, dynamic> toJson() => _$RecipeUtensilSponsorToJson(this);
}
