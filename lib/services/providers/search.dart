import 'package:flutter/material.dart';

import '../../models/index.dart';

class SearchProvider extends ChangeNotifier {
  final DatasetSource _source;

  // Derived and controlled by a TextEditingController
  String _text = "";

  // Category used when showing results
  SearchCategory _searchCategory = SearchCategory.recipes;

  // Order used when sorting results
  SearchSortBy _searchSortBy = SearchSortBy.relevance;

  // Cache for search results
  final _searchResults = <SearchResult>[];

  SearchProvider(this._source);

  // TODO: Trigger a refresh filter when value is changed
  void changeShowType(SearchCategory value) {
    _searchCategory = value;
    notifyListeners();
  }

// TODO: Trigger a refresh filter when value is changed
  void changeSortByType(SearchSortBy value) {
    _searchSortBy = value;
    notifyListeners();
  }

// TODO: Trigger a refresh filter when value is changed
  void changeText(String value) {
    _text = value;
    notifyListeners();
    print(value);
  }

  void refreshSearchResults() {
    final results = _filterResults();
    _replaceCacheWithResults(results);
    notifyListeners();
    print("Refreshed");
  }

  List<SearchResult> get searchResults {
    print(_searchResults.length);
    return _searchResults;
  }

  // TODO: Make this into a number
  String get resultsLengthText {
    if (_searchResults.isEmpty) {
      return "No matching results";
    }

    return "${_searchResults.length} matching results";
  }

  SearchCategory get searchShow => _searchCategory;

  SearchSortBy get searchSortBy => _searchSortBy;

  /// Returns the filtered dataset based on [searchCategory]'s value.
  List<SearchResult> _filterResults() {
    List<SearchResult> results = [];

    switch (_searchCategory) {
      case SearchCategory.recipes:
        results = _filterSourceRecipes();
        break;
      case SearchCategory.articles:
        results = _filterSourceArticles();
        break;
      case SearchCategory.videos:
        results = _filterSourceVideos();
        break;
      case SearchCategory.allContent:
        // NOTE: Precedence here matters. I placed recipes first because it is the most
        // important thing to the user, then the articles, finally with the videos.
        results = [
          ..._filterSourceRecipes(),
          ..._filterSourceArticles(),
          ..._filterSourceVideos(),
        ];
        break;
    }

    return results;
  }

  /// Returns the article(s) [SearchResult] from the dataset source with title(s) contains the [_text] value.
  List<SearchResult> _filterSourceArticles() {
    return _mapResults(
      _source.articles.where((e) {
        return e.title.toLowerCase().contains(_text.toLowerCase());
      }),
      SearchCategory.articles.toLiteralValue(),
    );
  }

  /// Returns the recipe(s) [SearchResult] from the dataset source with title(s) contains the [_text] value.
  List<SearchResult> _filterSourceRecipes() {
    return _mapResults(
      _source.recipes.where((e) {
        return e.title.toLowerCase().contains(_text.toLowerCase());
      }),
      SearchCategory.recipes.toString(),
    );
  }

  /// Returns the video(s) [SearchResult] from the dataset source with title(s) contains the [_text] value.
  List<SearchResult> _filterSourceVideos() {
    return _mapResults(
      _source.videos.where((e) {
        return e.title.toLowerCase().contains(_text.toLowerCase());
      }),
      SearchCategory.videos.toLiteralValue(),
    );
  }

  List<SearchResult> _mapResults(Iterable values, String category) {
    if (values.isNotEmpty) {
      return values
          .map<SearchResult>(
              (value) => SearchResult(category: category, data: value))
          .toList();
    }

    return [];
  }

  /// Replaces [_searchResults] with the [results] param if [results] is not empty.
  void _replaceCacheWithResults(List<SearchResult> results) {
    if (results.isNotEmpty) {
      _searchResults.replaceRange(0, _searchResults.length, results);
    }
  }
}
