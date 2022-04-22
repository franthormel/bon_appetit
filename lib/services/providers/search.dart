import 'dart:collection';

import 'package:flutter/material.dart';

import '../../models/index.dart';

class SearchProvider extends ChangeNotifier {
  final DatasetSource _source;

  // Category used when showing results
  SearchCategory _searchCategory = SearchCategory.recipes;

  // Cache for search results
  List<SearchResult> _searchResults = <SearchResult>[];

  // Order used when sorting results
  SearchSort _searchSort = SearchSort.relevance;

  // Derived and controlled from a TextEditingController
  String _searchText = "";

  SearchProvider(this._source);

  void changeSearchCategory(SearchCategory value) {
    if (value != _searchCategory) {
      _searchCategory = value;
      searchForResults();
    }
  }

  void changeSearchSort(SearchSort value) {
    if (value != _searchSort) {
      _searchSort = value;
      searchForResults();
    }
  }

  void changeSearchText(String text) {
    _searchText = text;
  }

  void searchForResults() {
    List<SearchResult> results = [];

    switch (_searchCategory) {
      case SearchCategory.recipes:
        results = _filterRecipes();
        break;
      case SearchCategory.articles:
        results = _filterArticles();
        break;
      case SearchCategory.videos:
        results = _filterVideos();
        break;
      case SearchCategory.allContent:
        // NOTE: Precedence here matters. I placed recipes first because it is the most
        // important thing to the user, then the articles, finally with the videos.
        results = [
          ..._filterRecipes(),
          ..._filterArticles(),
          ..._filterVideos(),
        ];
    }

    _searchResults = results;
    notifyListeners();
  }

  bool get hasSearched => _searchText.isNotEmpty || _searchResults.isNotEmpty;

  UnmodifiableListView<SearchResult> get searchResults =>
      UnmodifiableListView(_searchResults);

  int get searchResultsLength => _searchResults.length;

  SearchCategory get searchShow => _searchCategory;

  SearchSort get searchSort => _searchSort;

  String get searchText => _searchText;

  List<SearchResult> _filterArticles() {
    final articles = _source.articles
        .where((e) => e.title.toLowerCase().contains(_searchText.toLowerCase()))
        .toList();
    final sortedArticles = _sortArticles(articles);

    return _mapResults(sortedArticles, SearchCategory.articles);
  }

  List<SearchResult> _filterRecipes() {
    final recipes = _source.recipes
        .where((e) => e.title.toLowerCase().contains(_searchText.toLowerCase()))
        .toList();
    final sortedRecipes = _sortRecipes(recipes);

    return _mapResults(sortedRecipes, SearchCategory.recipes);
  }

  List<SearchResult> _filterVideos() {
    final videos = _source.videos
        .where((e) => e.title.toLowerCase().contains(_searchText.toLowerCase()))
        .toList();
    final sortedVideos = _sortVideos(videos);

    return _mapResults(sortedVideos, SearchCategory.videos);
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

  List<Article> _sortArticles(List<Article> articles) {
    if (_searchSort == SearchSort.newest) {
      articles.sort((a, b) => a.compareDateTo(b.dateUploaded));
    }

    return articles;
  }

  List<Recipe> _sortRecipes(List<Recipe> recipes) {
    // Sort by newest by comparing upload dates
    if (_searchSort == SearchSort.newest) {
      recipes.sort((a, b) => a.compareDateTo(b.dateUploaded));
    }

    // Sort by highestRated by comparing rating values
    else if (_searchSort == SearchSort.highestRated) {
      recipes.sort((a, b) => a.compareRatingValueTo(b));
    }

    // Sort by mostReviewed by comparing rating counts
    else if (_searchSort == SearchSort.mostReviewed) {
      recipes.sort((a, b) => a.compareRatingCountTo(b));
    }

    return recipes;
  }

  List<Video> _sortVideos(List<Video> videos) {
    if (_searchSort == SearchSort.newest) {
      videos.sort((a, b) => a.compareDateTo(b.dateUploaded));
    }

    return videos;
  }
}
