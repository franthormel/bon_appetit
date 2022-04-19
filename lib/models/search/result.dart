import 'enums.dart';
import '../recipes/rating.dart';

class SearchResult {
  final String category;
  final String description;
  final String imageUrl;
  final SearchCategory searchCategory;

  // TODO: ADd the actual recipe, article or video data here? (dynamic type just cast it)
  /// If [searchCategory] is set to [SearchCategory.recipes] this should have a value.
  final RecipeRating? rating;

  const SearchResult({
    required this.category,
    required this.description,
    required this.imageUrl,
    required this.searchCategory,
    this.rating,
  });
}
