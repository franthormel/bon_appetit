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
  // TODO: Remove final
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
    _replaceCacheWithResults(
        results); // TODO: Don't call here call on _filterResults();
    notifyListeners();
  }

  bool get hasSearched => _text.isNotEmpty || _searchResults.isNotEmpty;

  UnmodifiableListView<SearchResult> get searchResults =>
      UnmodifiableListView(_searchResults);

  int get resultsLength => _searchResults.length;

  SearchCategory get searchShow => _searchCategory;

  SearchSortBy get searchSortBy => _searchSortBy;

  String get searchText => _text;

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

  List<SearchResult> _filterSourceArticles() {
    final articles = _source.articles
        .where((e) => e.title.toLowerCase().contains(_text.toLowerCase()))
        .toList();
    final sortedArticles = _sortArticles(articles);

    return _mapResults(sortedArticles, SearchCategory.articles);
  }

  List<SearchResult> _filterSourceRecipes() {
    final recipes = _source.recipes
        .where((e) => e.title.toLowerCase().contains(_text.toLowerCase()))
        .toList();
    final sortedRecipes = _sortRecipes(recipes);

    return _mapResults(sortedRecipes, SearchCategory.recipes);
  }

  List<SearchResult> _filterSourceVideos() {
    final videos = _source.videos
        .where((e) => e.title.toLowerCase().contains(_text.toLowerCase()))
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

  // TODO: Place in _filterResults()
  void _replaceCacheWithResults(List<SearchResult> results) {
    _searchResults.clear();

    if (results.isNotEmpty) {
      _searchResults.addAll(results);
    }
  }

  List<Recipe> _sortRecipes(List<Recipe> recipes) {
    // Sort by newest by comparing upload dates
    if (_searchSortBy == SearchSortBy.newest) {
      recipes.sort((a, b) => a.compareDateUploadedTo(b.dateUploaded));
    }

    // Sort by highestRated by comparing rating values
    else if (_searchSortBy == SearchSortBy.highestRated) {
      recipes.sort((a, b) => a.compareRatingValueTo(b));
    }

    // Sort by mostReviewed by comparing rating counts
    else if (_searchSortBy == SearchSortBy.mostReviewed) {
      recipes.sort((a, b) => a.compareRatingCountTo(b));
    }

    return recipes;
  }

  List<Article> _sortArticles(List<Article> articles) {
    if (_searchSortBy == SearchSortBy.newest) {
      articles.sort((a, b) => a.compareDateUploadedTo(b.dateUploaded));
    }

    return articles;
  }

  List<Video> _sortVideos(List<Video> videos) {
    if (_searchSortBy == SearchSortBy.newest) {
      videos.sort((a, b) => a.compareDateUploadedTo(b.dateUploaded));
    }

    return videos;
  }
}
