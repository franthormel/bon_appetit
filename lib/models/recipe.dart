class Recipe {
  final String imageUrl;
  final String title;

  final double ratingValue;
  final int ratingCount;

  final String? tag;
  final String? description;

  Recipe({
    required this.imageUrl,
    required this.title,
    required this.ratingValue,
    required this.ratingCount,
    this.tag,
    this.description,
  });

  String get rating => "$ratingValue ($ratingCount)";
}
