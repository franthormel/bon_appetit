import 'dart:collection';

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

  void changeShowType(SearchCategory value) {
    _searchCategory = value;
    refreshSearchResults();
  }

  void changeSortByType(SearchSortBy value) {
    _searchSortBy = value;
    refreshSearchResults();
  }

  void changeText(String value) {
    _text = value;
  }

  void refreshSearchResults() {
    final results = _filterResults();
    _replaceCacheWithResults(results);
    notifyListeners();
  }

  bool get hasSearched => _text.isNotEmpty || _searchResults.isNotEmpty;

  UnmodifiableListView<SearchResult> get searchResults =>
      UnmodifiableListView(_searchResults);

  int get resultsLength => _searchResults.length;

  SearchCategory get searchShow => _searchCategory;

  SearchSortBy get searchSortBy => _searchSortBy;

  String get searchText => _text;

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

  // TODO: Apply sort by value
  /// Returns the article(s) [SearchResult] from the dataset source with title(s) contains the [_text] value.
  List<SearchResult> _filterSourceArticles() {
    return _mapResults(
      _source.articles.where(
        (e) => e.title.toLowerCase().contains(_text.toLowerCase()),
      ),
      SearchCategory.articles,
    );
  }

  // TODO: Apply sort by value
  /// Returns the recipe(s) [SearchResult] from the dataset source with title(s) contains the [_text] value.
  List<SearchResult> _filterSourceRecipes() {
    return _mapResults(
      _source.recipes.where(
        (e) => e.title.toLowerCase().contains(_text.toLowerCase()),
      ),
      SearchCategory.recipes,
    );
  }

  // TODO: Apply sort by value
  /// Returns the video(s) [SearchResult] from the dataset source with title(s) contains the [_text] value.
  List<SearchResult> _filterSourceVideos() {
    return _mapResults(
      _source.videos.where(
        (e) => e.title.toLowerCase().contains(_text.toLowerCase()),
      ),
      SearchCategory.videos,
    );
  }

  List<SearchResult> _mapResults(Iterable values, SearchCategory category) {
    if (values.isNotEmpty) {
      return values
          .map<SearchResult>(
              (value) => SearchResult(category: category, data: value))
          .toList();
    }

    return [];
  }

  /// Replaces [_searchResults] with the [results] param.
  void _replaceCacheWithResults(List<SearchResult> results) {
    _searchResults.clear();

    if (results.isNotEmpty) {
      _searchResults.addAll(results);
    }
  }
}
