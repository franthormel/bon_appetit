// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_shop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductShop _$ProductShopFromJson(Map<String, dynamic> json) => ProductShop(
      name: json['name'] as String,
      url: json['url'] as String,
      price: json['price'] as String?,
      priceDiscounted: json['priceDiscounted'] as String?,
    );

Map<String, dynamic> _$ProductShopToJson(ProductShop instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'priceDiscounted': instance.priceDiscounted,
      'url': instance.url,
    };
