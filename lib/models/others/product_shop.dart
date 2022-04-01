import 'package:json_annotation/json_annotation.dart';

part 'product_shop.g.dart';

/// Contains the details of a kitchen utensil's affiliation link.
@JsonSerializable()
class ProductShop {
  // Name of the site. e.g. Amazon
  final String name;

  // In U.S. dollars ($)
  final String? price;
  final String? priceDiscounted;

  // Item's link to the seller's site.
  final String url;

  const ProductShop({
    required this.name,
    required this.url,
    this.price,
    this.priceDiscounted,
  });

  factory ProductShop.fromJson(Map<String, dynamic> json) =>
      _$ProductShopFromJson(json);

  Map<String, dynamic> toJson() => _$ProductShopToJson(this);

  @override
  String toString() {
    final priceText = price != null ? "\$${price!}" : "SHOP";
    final shopName = name.toUpperCase();

    return "$priceText AT $shopName";
  }
}
