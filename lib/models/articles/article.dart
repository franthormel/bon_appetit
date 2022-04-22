import 'package:json_annotation/json_annotation.dart';

import '../../services/index.dart';
import '../others/base_model_mixin.dart';
import '../others/product.dart';

part 'article.g.dart';

@JsonSerializable()
class Article with BaseModelsMixin {
  final String author;
  final String category;
  final String content;
  final DateTime dateUploaded;
  final String id;
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
    required this.id,
    required this.imageUrl,
    required this.subtitle,
    required this.tags,
    required this.title,
    this.products,
  });

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleToJson(this);

  @override
  int compareDateUploadedTo(DateTime other) =>
      DateComparatorService.compareDates(dateUploaded, other);
}
