import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/index.dart';
import '../../services/app_state.dart';
import '../../services/mock_data.dart';
import 'home_consumer.dart';

class HomeProvidersWidget extends StatelessWidget {
  const HomeProvidersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppState>(
          create: (context) => AppState(),
          lazy: false,
        ),
        FutureProvider<RecipeDataset?>(
          create: (context) => MockDataService.fetchRecipeDataset(),
          initialData: null,
          lazy: false,
        ),
      ],
      child: Consumer<RecipeDataset?>(
        builder: (context, dataset, child) {
          return dataset == null ? Container() : const HomeConsumerWidget();
        },
      ),
    );
  }
}
