import 'article.dart';

class OtherArticle extends Article {
  final String category;

  OtherArticle({
    required this.category,
    required String imageUrl,
    required String title,
    required String subtitle,
  }) : super(imageUrl: imageUrl, title: title, subtitle: subtitle);
}
