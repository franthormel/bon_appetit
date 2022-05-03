import 'dart:collection';

import 'package:flutter/material.dart';

import '../../models/index.dart';
import '../comparator.dart';

class SearchProvider extends ChangeNotifier {
  final DatasetSource _source;

  // Category used when showing results
  SearchCategory _category = SearchCategory.recipes;

  // Categories used when filtering recipes
  final _filters = <String>[];

  // Counts the number of checkboxes ticked while the search  filters page is active.
  int _filtersTempCount = 0;

  // Cache for search results
  List<SearchResult> _results = <SearchResult>[];

  // Order used when sorting results
  SearchSort _sort = SearchSort.relevance;

  // Controlled by a TextEditingController
  String _text = "";

  SearchProvider(this._source);

  // RECIPE FILTERS
  void addFilter(String value) {
    if (!_filters.contains(value)) {
      _filters.add(value);
      _filtersTempCount++;
      notifyListeners();
    }
  }

  void clearFilters() {
    if (_filters.isNotEmpty) {
      _filters.clear();
      searchForResults();
    }
  }

  bool filterHas(String value) {
    return _filters.contains(value);
  }

  void removeFilter(String value, [bool search = false]) {
    if (_filters.contains(value)) {
      _filters.remove(value);

      if (search) {
        searchForResults();
      } else {
        _filtersTempCount--;
        notifyListeners();
      }
    }
  }

  void resetTemporaryFilters() {
    if (_filtersTempCount > 0 && _filters.isNotEmpty) {
      if (_filters.length == _filtersTempCount) {
        _filters.clear();
      } else {
        _filters.removeRange(
          _filters.length - _filtersTempCount,
          _filters.length,
        );
      }
      _filtersTempCount = 0;
      notifyListeners();
    }
  }

  // GENERAL SEARCH
  void changeCategory(SearchCategory value) {
    if (value != _category) {
      _category = value;
      searchForResults();
    }
  }

  void changeSort(SearchSort value) {
    if (value != _sort) {
      _sort = value;
      searchForResults();
    }
  }

  void changeText(String value) {
    _text = value;
  }

  void searchForResults() {
    List<SearchResult> results = [];

    switch (_category) {
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

    _results = results;
    _filtersTempCount = 0;
    notifyListeners();
  }

  bool get hasSearched => _text.isNotEmpty || _results.isNotEmpty;

  SearchCategory get category => _category;

  UnmodifiableListView<String> get filters => UnmodifiableListView(_filters);

  UnmodifiableListView<SearchResult> get results =>
      UnmodifiableListView(_results);

  int get resultsLength => _results.length;

  bool get showFilterChips =>
      _category == SearchCategory.recipes && _filters.isNotEmpty;

  SearchSort get sort => _sort;

  String get text => _text;

  List<SearchResult> _filterArticles() {
    final articles = _source.articles
        .where((e) => e.title.toLowerCase().contains(_text.toLowerCase()))
        .toList();
    final sortedArticles = _sortArticles(articles);

    return _mapResults(sortedArticles, SearchCategory.articles);
  }

  List<SearchResult> _filterRecipes() {
    final recipes = _source.recipes.where(_filterRecipeConditions).toList();
    final sortedRecipes = _sortRecipes(recipes);

    return _mapResults(sortedRecipes, SearchCategory.recipes);
  }

  bool _filterRecipeConditions(Recipe r) {
    final hasText = r.title.toLowerCase().contains(_text.toLowerCase());

    // Check the recipe's categories are a part of the filters.
    if (_filters.isNotEmpty) {
      bool isCategorized = false;

      for (final filter in _filters) {
        if (r.categories.contains(filter)) {
          isCategorized = true;
        } else {
          isCategorized = false;
          break;
        }
      }

      return isCategorized && hasText;
    }

    return hasText;
  }

  List<SearchResult> _filterVideos() {
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

  List<Article> _sortArticles(List<Article> articles) {
    if (_sort == SearchSort.newest) {
      articles.sort((a, b) => b.dateUploaded.compareTo(a.dateUploaded));
    }

    return articles;
  }

  List<Recipe> _sortRecipes(List<Recipe> recipes) {
    // Sort by newest by comparing upload dates
    if (_sort == SearchSort.newest) {
      recipes.sort((a, b) => b.dateUploaded.compareTo(a.dateUploaded));
    }

    // Sort by highestRated by comparing rating values
    else if (_sort == SearchSort.highestRated) {
      recipes.sort((a, b) {
        return ComparatorService.compareDoubleStrings(
          a.rating?.value,
          b.rating?.value,
        );
      });
    }

    // Sort by mostReviewed by comparing rating counts
    else if (_sort == SearchSort.mostReviewed) {
      recipes.sort((a, b) {
        return ComparatorService.compareIntStrings(
          a.rating?.count,
          b.rating?.count,
        );
      });
    }

    return recipes;
  }

  List<Video> _sortVideos(List<Video> videos) {
    if (_sort == SearchSort.newest) {
      videos.sort((a, b) => b.dateUploaded.compareTo(a.dateUploaded));
    }

    return videos;
  }
}
