import 'package:flutter/material.dart';

import '../../models/index.dart';

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

  String get resultsLengthText {
    if(_searchResults.isEmpty){
      return "No matching results";
    }

    return "${_searchResults.length} matching results";
  }

  List<SearchResult> fetchResults(DatasetSource source) {

    // TODO: Search results
    // 1. Type of result
    // 2. Search text

    return _searchResults;
  }

}
