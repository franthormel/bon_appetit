import 'package:json_annotation/json_annotation.dart';

import 'image_credits.dart';
import 'item_shop.dart';

part 'item_product.g.dart';

@JsonSerializable()
class ItemProduct {
  final String name;
  final String imageUrl;
  final ImageCredits credits;
  final List<ItemShop> shops;

  const ItemProduct({
    required this.name,
    required this.imageUrl,
    required this.credits,
    required this.shops,
  });

  factory ItemProduct.fromJson(Map<String, dynamic> json) =>
      _$ItemProductFromJson(json);

  Map<String, dynamic> toJson() => _$ItemProductToJson(this);
}
