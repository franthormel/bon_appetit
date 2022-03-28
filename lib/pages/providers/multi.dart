import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../router/route.dart';
import '../../services/index.dart';
import '../consumer.dart';

class MultiProvidersPage extends StatelessWidget {
  const MultiProvidersPage({Key? key}) : super(key: key);

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
        ChangeNotifierProvider<RouteProvider>(
          create: (context) => RouteProvider(),
        ),
      ],
      child: const ConsumerPage(),
    );
  }
}
