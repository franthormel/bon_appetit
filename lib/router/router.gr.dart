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
import 'package:flutter/material.dart' as _i3;
import 'package:flutter/widgets.dart' as _i5;

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
      return _i2.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.HomePage(),
          transitionsBuilder: _i2.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    SearchRoute.name: (routeData) {
      return _i2.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.SearchPage(),
          transitionsBuilder: _i2.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
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
              path: 'article', parent: DataProviderRoute.name)
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
