import 'package:flutter/material.dart';

import '../../models/index.dart';

class SearchProvider extends ChangeNotifier {
  // Primarily derived from TextEditingController
  String _text = "";

  // Type used when filter results
  SearchShow _searchShow = SearchShow.recipes;

  // Order used when filtering results
  SearchSortBy _searchSortBy = SearchSortBy.relevance;

  void changeShowType(SearchShow value) {
    _searchShow = value;
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
    _searchShow = SearchShow.recipes;
    notifyListeners();
  }

  void resetSortByType() {
    _searchSortBy = SearchSortBy.relevance;
    notifyListeners();
  }

  String get text => _text;

  String get searchShow => _searchShow.toLiteralValue();

  String get searchSortBy => _searchSortBy.toLiteralValue();

// TODO: Search results
}
