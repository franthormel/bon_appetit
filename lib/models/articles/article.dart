import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

import '../shared/product.dart';

part 'article.g.dart';

@JsonSerializable()
class Article {
  final String author;
  final String category;
  final String content;
  final DateTime dateUploaded;
  final String imageUrl;
  final List<Product>? products;
  final String subtitle;
  final List<String> tags;
  final String title;

  Article({
    required this.author,
    required this.category,
    required this.content,
    required this.dateUploaded,
    required this.imageUrl,
    required this.subtitle,
    required this.tags,
    required this.title,
    this.products,
  });

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleToJson(this);

  String get heroTag => ObjectKey(this).toString();
}
