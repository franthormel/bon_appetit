// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_shop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemShop _$ItemShopFromJson(Map<String, dynamic> json) => ItemShop(
      name: json['name'] as String,
      url: json['url'] as String,
      discountedPrice: json['discountedPrice'] as String?,
      price: json['price'] as String?,
    );

Map<String, dynamic> _$ItemShopToJson(ItemShop instance) => <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'discountedPrice': instance.discountedPrice,
      'url': instance.url,
    };
