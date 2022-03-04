import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../services/index.dart';
import 'consumer.dart';

class RouteProviderPage extends StatelessWidget {
  const RouteProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<SuggestedRecipesFilter>(
          create: (context) => SuggestedRecipesFilter(),
        ),
        ChangeNotifierProvider<TrendingRecipesFilter>(
          create: (context) => TrendingRecipesFilter(),
        ),
        ChangeNotifierProvider<RouterProvider>(
          create: (context) => RouterProvider(),
        ),
      ],
      child: const ConsumerPage(),
    );
  }
}
