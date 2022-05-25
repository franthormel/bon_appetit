import 'package:flutter/material.dart';

import '../../models/index.dart';
import '../firebase/analytics.dart';
import '../firebase/firestore/favorites.dart';
import '../firebase/firestore/firestore.dart';

class FavoritesProvider extends ChangeNotifier {
  final _articles = <String>[];
  final _recipes = <String>[];
  final _videos = <String>[];

  FavoritesProvider() {
    readFromFirestore();
  }

  void clear() {
    _articles.clear();
    _recipes.clear();
    _videos.clear();
  }

  List<Article> filterFavoriteArticles(List<Article> articles) {
    return articles.where((source) => _articles.contains(source.id)).toList();
  }

  List<Recipe> filterFavoriteRecipes(List<Recipe> recipes) {
    return recipes.where((source) => _recipes.contains(source.id)).toList();
  }

  List<Video> filterFavoriteVideos(List<Video> videos) {
    return videos.where((source) => _videos.contains(source.id)).toList();
  }

  /// Returns [true] if the given [id] and [type] is already part of the favorites list.
  bool isFavorite(String id, ContentType type) {
    bool value = false;

    switch (type) {
      case ContentType.recipe:
        value = _recipes.contains(id);
        break;
      case ContentType.article:
        value = _articles.contains(id);
        break;
      case ContentType.video:
        value = _videos.contains(id);
        break;
    }

    return value;
  }

  /// Reads the user's favorites from Firestore.
  /// Called in the [FavoritesProvider] constructor and whenever a user signs in.
  Future<void> readFromFirestore() async {
    final data = await FirestoreService.readFavorites();

    if (data != null) {
      clear();

      _articles.addAll(data.articles);
      _recipes.addAll(data.recipes);
      _videos.addAll(data.videos);
    }
  }

  /// Toggles a given item using its [id] and [type] favorite status.
  /// If the item is not yet a favorite, add it to the favorites list otherwise remove it.
  void toggleFavorite(String id, ContentType type) {
    // Recipe
    if (type == ContentType.recipe) {
      _toggleFavoriteRecipe(id);
      notifyListeners();
    }

    // Article
    else if (type == ContentType.article) {
      _toggleFavoriteArticle(id);
      notifyListeners();
    }

    // Video
    else if (type == ContentType.video) {
      _toggleFavoriteVideo(id);
      notifyListeners();
    }
  }

  void _toggleFavoriteRecipe(String id) {
    if (_recipes.contains(id)) {
      _recipes.remove(id);
      FirebaseAnalyticsService.logFavoriteRemove(id, ContentType.recipe);
    } else {
      _recipes.add(id);
      FirebaseAnalyticsService.logFavoriteAdd(id, ContentType.recipe);
    }
    _writeToFirestore();
  }

  void _toggleFavoriteArticle(String id) {
    if (_articles.contains(id)) {
      _articles.remove(id);
      FirebaseAnalyticsService.logFavoriteRemove(id, ContentType.article);
    } else {
      _articles.add(id);
      FirebaseAnalyticsService.logFavoriteAdd(id, ContentType.article);
    }
    _writeToFirestore();
  }

  void _toggleFavoriteVideo(String id) {
    if (_videos.contains(id)) {
      _videos.remove(id);
      FirebaseAnalyticsService.logFavoriteRemove(id, ContentType.video);
    } else {
      _videos.add(id);
      FirebaseAnalyticsService.logFavoriteAdd(id, ContentType.video);
    }
    _writeToFirestore();
  }

  Future<void> _writeToFirestore() async {
    final favorites = FirestoreFavorites(
      articles: _articles,
      recipes: _recipes,
      videos: _videos,
    );

    await FirestoreService.writeFavorites(favorites);
  }
}
