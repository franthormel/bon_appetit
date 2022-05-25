import '../others/content_type.dart';

class SearchResult {
  /// This property holds the actual [Recipe], [Article], or [Video] value.
  /// All you need is to typecast it. Use the [searchCategory] property to check its type.
  final dynamic data;
  final ContentType type;

  const SearchResult({required this.data, required this.type});
}
