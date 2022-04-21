import 'enums.dart';

class SearchResult {
  /// Must be derived from [SearchCategory.toLiteralValue()].
  final SearchCategory category;

  /// This property holds the actual [Recipe], [Article], or [Video] value.
  /// All you need is to typecast it. Use the [searchCategory] property to check its type.
  final dynamic data;

  const SearchResult({required this.category, required this.data});
}
