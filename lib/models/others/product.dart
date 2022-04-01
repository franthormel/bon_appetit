import 'package:json_annotation/json_annotation.dart';

import 'product_shop.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
  final String name;
  final String imageUrl;
  final List<ProductShop> shops;

  const Product({
    required this.name,
    required this.imageUrl,
    required this.shops,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
