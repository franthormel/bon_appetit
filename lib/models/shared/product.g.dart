// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String,
      shops: (json['shops'] as List<dynamic>)
          .map((e) => ProductShop.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'shops': instance.shops,
    };
