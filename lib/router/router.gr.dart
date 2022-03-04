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

import '../pages/index.dart' as _i2;
import '../widgets/providers/data_provider.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    InitialRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.DataProviderWidget());
    },
    HomeRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomePage());
    },
    SearchRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SearchPage());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(InitialRoute.name, path: '/', children: [
          _i3.RouteConfig(HomeRoute.name,
              path: 'home', parent: InitialRoute.name),
          _i3.RouteConfig(SearchRoute.name,
              path: 'search', parent: InitialRoute.name)
        ]),
        _i3.RouteConfig('*#redirect',
            path: '*', redirectTo: 'InitialRoute', fullMatch: true)
      ];
}

/// generated route for
/// [_i1.DataProviderWidget]
class InitialRoute extends _i3.PageRouteInfo<void> {
  const InitialRoute({List<_i3.PageRouteInfo>? children})
      : super(InitialRoute.name, path: '/', initialChildren: children);

  static const String name = 'InitialRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: 'home');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.SearchPage]
class SearchRoute extends _i3.PageRouteInfo<void> {
  const SearchRoute() : super(SearchRoute.name, path: 'search');

  static const String name = 'SearchRoute';
}
