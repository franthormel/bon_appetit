import 'package:json_annotation/json_annotation.dart';

part 'article_credits.g.dart';

@JsonSerializable()
class ArticleCredits {
  final String author;
  final String illustrator;

  const ArticleCredits({required this.author, required this.illustrator});

  factory ArticleCredits.fromJson(Map<String, dynamic> json) =>
      _$ArticleCreditsFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleCreditsToJson(this);
}
