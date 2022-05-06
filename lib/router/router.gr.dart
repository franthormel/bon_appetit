// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/cupertino.dart' as _i5;
import 'package:flutter/material.dart' as _i3;

import '../models/index.dart' as _i4;
import '../pages/index.dart' as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    DataProviderRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.DataProviderPage());
    },
    HomeRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    SearchRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SearchPage());
    },
    RecipeDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<RecipeDetailsRouteArgs>();
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.RecipeDetailsPage(args.recipe, key: args.key));
    },
    ArticleDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ArticleDetailsRouteArgs>();
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.ArticleDetailsPage(args.article, key: args.key));
    },
    VideoDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<VideoDetailsRouteArgs>();
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.VideoDetailsPage(args.video, key: args.key));
    },
    DrawerCookingRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.DrawerCookingPage());
    },
    DrawerCultureRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.DrawerCulturePage());
    },
    DrawerRecipesRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.DrawerRecipesPage());
    },
    DrawerRestaurantsRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.DrawerRestaurantsPage());
    },
    DrawerShoppingRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.DrawerShoppingPage());
    },
    DrawerVideosRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.DrawerVideosPage());
    },
    SearchRecipeFiltersRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SearchRecipeFiltersPage());
    },
    AuthAccountRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.AuthAccountPage());
    },
    AuthEmailRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.AuthEmailPage());
    },
    AuthLoginRoute.name: (routeData) {
      final args = routeData.argsAs<AuthLoginRouteArgs>();
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.AuthLoginPage(email: args.email, key: args.key));
    },
    AuthRegisterRoute.name: (routeData) {
      final args = routeData.argsAs<AuthRegisterRouteArgs>();
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.AuthRegisterPage(email: args.email, key: args.key));
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(DataProviderRoute.name, path: '/', children: [
          _i2.RouteConfig(HomeRoute.name,
              path: 'home', parent: DataProviderRoute.name),
          _i2.RouteConfig(SearchRoute.name,
              path: 'search', parent: DataProviderRoute.name),
          _i2.RouteConfig(RecipeDetailsRoute.name,
              path: 'recipe', parent: DataProviderRoute.name),
          _i2.RouteConfig(ArticleDetailsRoute.name,
              path: 'article', parent: DataProviderRoute.name),
          _i2.RouteConfig(VideoDetailsRoute.name,
              path: 'video', parent: DataProviderRoute.name),
          _i2.RouteConfig(DrawerCookingRoute.name,
              path: 'cooking', parent: DataProviderRoute.name),
          _i2.RouteConfig(DrawerCultureRoute.name,
              path: 'culture', parent: DataProviderRoute.name),
          _i2.RouteConfig(DrawerRecipesRoute.name,
              path: 'recipes', parent: DataProviderRoute.name),
          _i2.RouteConfig(DrawerRestaurantsRoute.name,
              path: 'restaurants', parent: DataProviderRoute.name),
          _i2.RouteConfig(DrawerShoppingRoute.name,
              path: 'shopping', parent: DataProviderRoute.name),
          _i2.RouteConfig(DrawerVideosRoute.name,
              path: 'videos', parent: DataProviderRoute.name),
          _i2.RouteConfig(SearchRecipeFiltersRoute.name,
              path: 'search-recipe-filters', parent: DataProviderRoute.name),
          _i2.RouteConfig(SearchRecipeFiltersRoute.name,
              path: 'search-recipe-filters', parent: DataProviderRoute.name),
          _i2.RouteConfig(AuthAccountRoute.name,
              path: 'account', parent: DataProviderRoute.name),
          _i2.RouteConfig(AuthEmailRoute.name,
              path: 'email', parent: DataProviderRoute.name),
          _i2.RouteConfig(AuthLoginRoute.name,
              path: 'password', parent: DataProviderRoute.name),
          _i2.RouteConfig(AuthRegisterRoute.name,
              path: 'register', parent: DataProviderRoute.name)
        ]),
        _i2.RouteConfig('*#redirect',
            path: '*', redirectTo: 'DataProviderRoute', fullMatch: true)
      ];
}

/// generated route for
/// [_i1.DataProviderPage]
class DataProviderRoute extends _i2.PageRouteInfo<void> {
  const DataProviderRoute({List<_i2.PageRouteInfo>? children})
      : super(DataProviderRoute.name, path: '/', initialChildren: children);

  static const String name = 'DataProviderRoute';
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i2.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: 'home');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i1.SearchPage]
class SearchRoute extends _i2.PageRouteInfo<void> {
  const SearchRoute() : super(SearchRoute.name, path: 'search');

  static const String name = 'SearchRoute';
}

/// generated route for
/// [_i1.RecipeDetailsPage]
class RecipeDetailsRoute extends _i2.PageRouteInfo<RecipeDetailsRouteArgs> {
  RecipeDetailsRoute({required _i4.Recipe recipe, _i5.Key? key})
      : super(RecipeDetailsRoute.name,
            path: 'recipe',
            args: RecipeDetailsRouteArgs(recipe: recipe, key: key));

  static const String name = 'RecipeDetailsRoute';
}

class RecipeDetailsRouteArgs {
  const RecipeDetailsRouteArgs({required this.recipe, this.key});

  final _i4.Recipe recipe;

  final _i5.Key? key;

  @override
  String toString() {
    return 'RecipeDetailsRouteArgs{recipe: $recipe, key: $key}';
  }
}

/// generated route for
/// [_i1.ArticleDetailsPage]
class ArticleDetailsRoute extends _i2.PageRouteInfo<ArticleDetailsRouteArgs> {
  ArticleDetailsRoute({required _i4.Article article, _i5.Key? key})
      : super(ArticleDetailsRoute.name,
            path: 'article',
            args: ArticleDetailsRouteArgs(article: article, key: key));

  static const String name = 'ArticleDetailsRoute';
}

class ArticleDetailsRouteArgs {
  const ArticleDetailsRouteArgs({required this.article, this.key});

  final _i4.Article article;

  final _i5.Key? key;

  @override
  String toString() {
    return 'ArticleDetailsRouteArgs{article: $article, key: $key}';
  }
}

/// generated route for
/// [_i1.VideoDetailsPage]
class VideoDetailsRoute extends _i2.PageRouteInfo<VideoDetailsRouteArgs> {
  VideoDetailsRoute({required _i4.Video video, _i5.Key? key})
      : super(VideoDetailsRoute.name,
            path: 'video', args: VideoDetailsRouteArgs(video: video, key: key));

  static const String name = 'VideoDetailsRoute';
}

class VideoDetailsRouteArgs {
  const VideoDetailsRouteArgs({required this.video, this.key});

  final _i4.Video video;

  final _i5.Key? key;

  @override
  String toString() {
    return 'VideoDetailsRouteArgs{video: $video, key: $key}';
  }
}

/// generated route for
/// [_i1.DrawerCookingPage]
class DrawerCookingRoute extends _i2.PageRouteInfo<void> {
  const DrawerCookingRoute() : super(DrawerCookingRoute.name, path: 'cooking');

  static const String name = 'DrawerCookingRoute';
}

/// generated route for
/// [_i1.DrawerCulturePage]
class DrawerCultureRoute extends _i2.PageRouteInfo<void> {
  const DrawerCultureRoute() : super(DrawerCultureRoute.name, path: 'culture');

  static const String name = 'DrawerCultureRoute';
}

/// generated route for
/// [_i1.DrawerRecipesPage]
class DrawerRecipesRoute extends _i2.PageRouteInfo<void> {
  const DrawerRecipesRoute() : super(DrawerRecipesRoute.name, path: 'recipes');

  static const String name = 'DrawerRecipesRoute';
}

/// generated route for
/// [_i1.DrawerRestaurantsPage]
class DrawerRestaurantsRoute extends _i2.PageRouteInfo<void> {
  const DrawerRestaurantsRoute()
      : super(DrawerRestaurantsRoute.name, path: 'restaurants');

  static const String name = 'DrawerRestaurantsRoute';
}

/// generated route for
/// [_i1.DrawerShoppingPage]
class DrawerShoppingRoute extends _i2.PageRouteInfo<void> {
  const DrawerShoppingRoute()
      : super(DrawerShoppingRoute.name, path: 'shopping');

  static const String name = 'DrawerShoppingRoute';
}

/// generated route for
/// [_i1.DrawerVideosPage]
class DrawerVideosRoute extends _i2.PageRouteInfo<void> {
  const DrawerVideosRoute() : super(DrawerVideosRoute.name, path: 'videos');

  static const String name = 'DrawerVideosRoute';
}

/// generated route for
/// [_i1.SearchRecipeFiltersPage]
class SearchRecipeFiltersRoute extends _i2.PageRouteInfo<void> {
  const SearchRecipeFiltersRoute()
      : super(SearchRecipeFiltersRoute.name, path: 'search-recipe-filters');

  static const String name = 'SearchRecipeFiltersRoute';
}

/// generated route for
/// [_i1.AuthAccountPage]
class AuthAccountRoute extends _i2.PageRouteInfo<void> {
  const AuthAccountRoute() : super(AuthAccountRoute.name, path: 'account');

  static const String name = 'AuthAccountRoute';
}

/// generated route for
/// [_i1.AuthEmailPage]
class AuthEmailRoute extends _i2.PageRouteInfo<void> {
  const AuthEmailRoute() : super(AuthEmailRoute.name, path: 'email');

  static const String name = 'AuthEmailRoute';
}

/// generated route for
/// [_i1.AuthLoginPage]
class AuthLoginRoute extends _i2.PageRouteInfo<AuthLoginRouteArgs> {
  AuthLoginRoute({required String email, _i5.Key? key})
      : super(AuthLoginRoute.name,
            path: 'password', args: AuthLoginRouteArgs(email: email, key: key));

  static const String name = 'AuthLoginRoute';
}

class AuthLoginRouteArgs {
  const AuthLoginRouteArgs({required this.email, this.key});

  final String email;

  final _i5.Key? key;

  @override
  String toString() {
    return 'AuthLoginRouteArgs{email: $email, key: $key}';
  }
}

/// generated route for
/// [_i1.AuthRegisterPage]
class AuthRegisterRoute extends _i2.PageRouteInfo<AuthRegisterRouteArgs> {
  AuthRegisterRoute({required String email, _i5.Key? key})
      : super(AuthRegisterRoute.name,
            path: 'register',
            args: AuthRegisterRouteArgs(email: email, key: key));

  static const String name = 'AuthRegisterRoute';
}

class AuthRegisterRouteArgs {
  const AuthRegisterRouteArgs({required this.email, this.key});

  final String email;

  final _i5.Key? key;

  @override
  String toString() {
    return 'AuthRegisterRouteArgs{email: $email, key: $key}';
  }
}
