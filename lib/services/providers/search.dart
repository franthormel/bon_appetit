import 'package:flutter/material.dart';

import '../../models/index.dart';

// TODO: Provide DatasetSource during creation (on constructor)
class SearchProvider extends ChangeNotifier {
  // Primarily derived from TextEditingController
  String _text = "";

  // Type used when filter results
  SearchCategory _searchCategory = SearchCategory.recipes;

  // Order used when filtering results
  SearchSortBy _searchSortBy = SearchSortBy.relevance;

  // Search results cache
  final _searchResults = <SearchResult>[];

  void changeShowType(SearchCategory value) {
    _searchCategory = value;
    notifyListeners();
  }

  void changeSortByType(SearchSortBy value) {
    _searchSortBy = value;
    notifyListeners();
  }

  void changeText(String value) {
    _text = value;
    notifyListeners();
  }

  void clearText() {
    _text = "";
    notifyListeners();
  }

  void resetShowType() {
    _searchCategory = SearchCategory.recipes;
    notifyListeners();
  }

  void resetSortByType() {
    _searchSortBy = SearchSortBy.relevance;
    notifyListeners();
  }

  String get text => _text;

  String get searchShow => _searchCategory.toLiteralValue();

  String get searchSortBy => _searchSortBy.toLiteralValue();

  // TODO: Make this into a number
  String get resultsLengthText {
    if (_searchResults.isEmpty) {
      return "No matching results";
    }

    return "${_searchResults.length} matching results";
  }

  // TODO: Search results
  List<SearchResult> fetchResults(DatasetSource source) {
    if (_searchCategory == SearchCategory.recipes) {
      _replaceResults(_filterRecipes(source));
    } else if (_searchCategory == SearchCategory.articles) {
      _replaceResults(_filterArticles(source));
    } else if (_searchCategory == SearchCategory.videos) {
      _replaceResults(_filterVideos(source));
    }

    print("Text: $_text");
    print(_searchResults.length);

    return _searchResults;
  }

  void _replaceResults(List<SearchResult>? results) {
    if (results != null && results.isNotEmpty) {
      _searchResults.replaceRange(0, _searchResults.length, results);
    }
  }

  List<SearchResult>? _filterRecipes(DatasetSource source) {
    return _mapResults(
      source.recipes.where((e) {
        return e.title.toLowerCase().contains(_text.toLowerCase());
      }),
      SearchCategory.recipes.toLiteralValue(),
    );
  }

  List<SearchResult>? _filterArticles(DatasetSource source) {
    return _mapResults(
      source.articles.where((e) {
        return e.title.toLowerCase().contains(_text.toLowerCase());
      }),
      SearchCategory.articles.toLiteralValue(),
    );
  }

  List<SearchResult>? _filterVideos(DatasetSource source) {
    return _mapResults(
      source.videos.where((e) {
        return e.title.toLowerCase().contains(_text.toLowerCase());
      }),
      SearchCategory.videos.toLiteralValue(),
    );
  }

  List<SearchResult>? _mapResults(Iterable values, String category) {
    if (values.isNotEmpty) {
      return values
          .map<SearchResult>(
              (value) => SearchResult(category: category, data: value))
          .toList();
    }

    return null;
  }
}
