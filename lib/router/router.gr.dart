// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../models/index.dart' as _i5;
import '../pages/auth/email.dart' as _i2;
import '../pages/index.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    DataProviderRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.DataProviderPage());
    },
    HomeRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    SearchRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SearchPage());
    },
    RecipeDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<RecipeDetailsRouteArgs>();
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.RecipeDetailsPage(args.recipe, key: args.key));
    },
    ArticleDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ArticleDetailsRouteArgs>();
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.ArticleDetailsPage(args.article, key: args.key));
    },
    VideoDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<VideoDetailsRouteArgs>();
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.VideoDetailsPage(args.video, key: args.key));
    },
    DrawerCookingRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.DrawerCookingPage());
    },
    DrawerCultureRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.DrawerCulturePage());
    },
    DrawerRecipesRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.DrawerRecipesPage());
    },
    DrawerRestaurantsRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.DrawerRestaurantsPage());
    },
    DrawerShoppingRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.DrawerShoppingPage());
    },
    DrawerVideosRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.DrawerVideosPage());
    },
    SearchRecipeFiltersRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SearchRecipeFiltersPage());
    },
    AuthEmailRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.AuthSignInEmailPage());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(DataProviderRoute.name, path: '/', children: [
          _i3.RouteConfig(HomeRoute.name,
              path: 'home', parent: DataProviderRoute.name),
          _i3.RouteConfig(SearchRoute.name,
              path: 'search', parent: DataProviderRoute.name),
          _i3.RouteConfig(RecipeDetailsRoute.name,
              path: 'recipe', parent: DataProviderRoute.name),
          _i3.RouteConfig(ArticleDetailsRoute.name,
              path: 'article', parent: DataProviderRoute.name),
          _i3.RouteConfig(VideoDetailsRoute.name,
              path: 'video', parent: DataProviderRoute.name),
          _i3.RouteConfig(DrawerCookingRoute.name,
              path: 'cooking', parent: DataProviderRoute.name),
          _i3.RouteConfig(DrawerCultureRoute.name,
              path: 'culture', parent: DataProviderRoute.name),
          _i3.RouteConfig(DrawerRecipesRoute.name,
              path: 'recipes', parent: DataProviderRoute.name),
          _i3.RouteConfig(DrawerRestaurantsRoute.name,
              path: 'restaurants', parent: DataProviderRoute.name),
          _i3.RouteConfig(DrawerShoppingRoute.name,
              path: 'shopping', parent: DataProviderRoute.name),
          _i3.RouteConfig(DrawerVideosRoute.name,
              path: 'videos', parent: DataProviderRoute.name),
          _i3.RouteConfig(SearchRecipeFiltersRoute.name,
              path: 'search-recipe-filters', parent: DataProviderRoute.name),
          _i3.RouteConfig(SearchRecipeFiltersRoute.name,
              path: 'search-recipe-filters', parent: DataProviderRoute.name),
          _i3.RouteConfig(AuthEmailRoute.name,
              path: 'email', parent: DataProviderRoute.name)
        ]),
        _i3.RouteConfig('*#redirect',
            path: '*', redirectTo: 'DataProviderRoute', fullMatch: true)
      ];
}

/// generated route for
/// [_i1.DataProviderPage]
class DataProviderRoute extends _i3.PageRouteInfo<void> {
  const DataProviderRoute({List<_i3.PageRouteInfo>? children})
      : super(DataProviderRoute.name, path: '/', initialChildren: children);

  static const String name = 'DataProviderRoute';
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: 'home');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i1.SearchPage]
class SearchRoute extends _i3.PageRouteInfo<void> {
  const SearchRoute() : super(SearchRoute.name, path: 'search');

  static const String name = 'SearchRoute';
}

/// generated route for
/// [_i1.RecipeDetailsPage]
class RecipeDetailsRoute extends _i3.PageRouteInfo<RecipeDetailsRouteArgs> {
  RecipeDetailsRoute({required _i5.Recipe recipe, _i4.Key? key})
      : super(RecipeDetailsRoute.name,
            path: 'recipe',
            args: RecipeDetailsRouteArgs(recipe: recipe, key: key));

  static const String name = 'RecipeDetailsRoute';
}

class RecipeDetailsRouteArgs {
  const RecipeDetailsRouteArgs({required this.recipe, this.key});

  final _i5.Recipe recipe;

  final _i4.Key? key;

  @override
  String toString() {
    return 'RecipeDetailsRouteArgs{recipe: $recipe, key: $key}';
  }
}

/// generated route for
/// [_i1.ArticleDetailsPage]
class ArticleDetailsRoute extends _i3.PageRouteInfo<ArticleDetailsRouteArgs> {
  ArticleDetailsRoute({required _i5.Article article, _i4.Key? key})
      : super(ArticleDetailsRoute.name,
            path: 'article',
            args: ArticleDetailsRouteArgs(article: article, key: key));

  static const String name = 'ArticleDetailsRoute';
}

class ArticleDetailsRouteArgs {
  const ArticleDetailsRouteArgs({required this.article, this.key});

  final _i5.Article article;

  final _i4.Key? key;

  @override
  String toString() {
    return 'ArticleDetailsRouteArgs{article: $article, key: $key}';
  }
}

/// generated route for
/// [_i1.VideoDetailsPage]
class VideoDetailsRoute extends _i3.PageRouteInfo<VideoDetailsRouteArgs> {
  VideoDetailsRoute({required _i5.Video video, _i4.Key? key})
      : super(VideoDetailsRoute.name,
            path: 'video', args: VideoDetailsRouteArgs(video: video, key: key));

  static const String name = 'VideoDetailsRoute';
}

class VideoDetailsRouteArgs {
  const VideoDetailsRouteArgs({required this.video, this.key});

  final _i5.Video video;

  final _i4.Key? key;

  @override
  String toString() {
    return 'VideoDetailsRouteArgs{video: $video, key: $key}';
  }
}

/// generated route for
/// [_i1.DrawerCookingPage]
class DrawerCookingRoute extends _i3.PageRouteInfo<void> {
  const DrawerCookingRoute() : super(DrawerCookingRoute.name, path: 'cooking');

  static const String name = 'DrawerCookingRoute';
}

/// generated route for
/// [_i1.DrawerCulturePage]
class DrawerCultureRoute extends _i3.PageRouteInfo<void> {
  const DrawerCultureRoute() : super(DrawerCultureRoute.name, path: 'culture');

  static const String name = 'DrawerCultureRoute';
}

/// generated route for
/// [_i1.DrawerRecipesPage]
class DrawerRecipesRoute extends _i3.PageRouteInfo<void> {
  const DrawerRecipesRoute() : super(DrawerRecipesRoute.name, path: 'recipes');

  static const String name = 'DrawerRecipesRoute';
}

/// generated route for
/// [_i1.DrawerRestaurantsPage]
class DrawerRestaurantsRoute extends _i3.PageRouteInfo<void> {
  const DrawerRestaurantsRoute()
      : super(DrawerRestaurantsRoute.name, path: 'restaurants');

  static const String name = 'DrawerRestaurantsRoute';
}

/// generated route for
/// [_i1.DrawerShoppingPage]
class DrawerShoppingRoute extends _i3.PageRouteInfo<void> {
  const DrawerShoppingRoute()
      : super(DrawerShoppingRoute.name, path: 'shopping');

  static const String name = 'DrawerShoppingRoute';
}

/// generated route for
/// [_i1.DrawerVideosPage]
class DrawerVideosRoute extends _i3.PageRouteInfo<void> {
  const DrawerVideosRoute() : super(DrawerVideosRoute.name, path: 'videos');

  static const String name = 'DrawerVideosRoute';
}

/// generated route for
/// [_i1.SearchRecipeFiltersPage]
class SearchRecipeFiltersRoute extends _i3.PageRouteInfo<void> {
  const SearchRecipeFiltersRoute()
      : super(SearchRecipeFiltersRoute.name, path: 'search-recipe-filters');

  static const String name = 'SearchRecipeFiltersRoute';
}

/// generated route for
/// [_i2.AuthSignInEmailPage]
class AuthEmailRoute extends _i3.PageRouteInfo<void> {
  const AuthEmailRoute() : super(AuthEmailRoute.name, path: 'email');

  static const String name = 'AuthEmailRoute';
}
