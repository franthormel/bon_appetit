import 'package:json_annotation/json_annotation.dart';

part 'item_shop.g.dart';

/// Contains the details of a kitchen utensil's affiliation link.
@JsonSerializable()
class ItemShop {
  // Name of the site. e.g. Amazon
  final String name;

  // In U.S. dollars ($)
  final String? price;
  final String? priceDiscounted;

  // Item's link to the seller's site.
  final String url;

  const ItemShop({
    required this.name,
    required this.url,
    this.price,
    this.priceDiscounted,
  });

  factory ItemShop.fromJson(Map<String, dynamic> json) =>
      _$ItemShopFromJson(json);

  Map<String, dynamic> toJson() => _$ItemShopToJson(this);
}
