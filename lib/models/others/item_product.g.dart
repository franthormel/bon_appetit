// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemProduct _$ItemProductFromJson(Map<String, dynamic> json) => ItemProduct(
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String,
      shops: (json['shops'] as List<dynamic>)
          .map((e) => ItemShop.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ItemProductToJson(ItemProduct instance) =>
    <String, dynamic>{
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'shops': instance.shops,
    };
