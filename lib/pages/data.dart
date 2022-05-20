import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/index.dart';
import '../router/index.dart';
import '../services/index.dart';
import 'consumer.dart';
import 'loading.dart';

class DataProviderPage extends StatelessWidget {
  const DataProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        FutureProvider<DatasetSource?>(
          catchError: catchError,
          create: (context) => MockDataService.fetchSource(),
          initialData: null,
          lazy: false,
        ),
        FutureProvider<DatasetHomepage?>(
          catchError: catchError,
          create: (context) => MockDataService.fetchHomepageDataset(),
          initialData: null,
          lazy: false,
        ),
        ChangeNotifierProvider<FavoritesProvider>(
          create: (context) => FavoritesProvider(),
          lazy: false,
        ),
        ChangeNotifierProvider<RouteProvider>(
          create: (context) => RouteProvider(),
        ),
        ChangeNotifierProvider<SettingsProvider>(
          create: (context) => SettingsProvider(),
          lazy: false,
        ),
        ChangeNotifierProvider<SuggestedRecipesFilter>(
          create: (context) => SuggestedRecipesFilter(),
        ),
        ChangeNotifierProvider<TrendingRecipesFilter>(
          create: (context) => TrendingRecipesFilter(),
        ),
      ],
      child: Consumer2<DatasetSource?, DatasetHomepage?>(
        builder: (context, source, homepage, child) =>
            source == null || homepage == null
                ? const LoadingPage()
                : const ConsumerPage(),
      ),
    );
  }

  T? catchError<T>(BuildContext context, Object? error) {
    if (kDebugMode) {
      final e = error as Error;

      print(">>> TITLE \n$e");
      print(">>> Stack \n${e.stackTrace}");
    }

    return null;
  }
}
