import '../recipes/rating.dart';
import 'enums.dart';

class SearchResult {
  final String category;
  final String description;
  final String imageUrl;
  final SearchCategory searchCategory;
  final String title;

  // TODO: Add the actual recipe, article or video data here? (dynamic type just cast it)
  /// If [searchCategory] is set to [SearchCategory.recipes] this should have a value.
  final RecipeRating? rating;

  const SearchResult({
    required this.category,
    required this.description,
    required this.imageUrl,
    required this.searchCategory,
    required this.title,
    this.rating,
  });
}
