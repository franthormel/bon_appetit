// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_shop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemShop _$ItemShopFromJson(Map<String, dynamic> json) => ItemShop(
      name: json['name'] as String,
      url: json['url'] as String,
      price: json['price'] as String?,
      priceDiscounted: json['priceDiscounted'] as String?,
    );

Map<String, dynamic> _$ItemShopToJson(ItemShop instance) => <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'priceDiscounted': instance.priceDiscounted,
      'url': instance.url,
    };
