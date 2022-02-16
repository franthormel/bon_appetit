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
        FutureProvider<HomepageDataset?>(
          create: (context) => MockDataService.fetchHomepageDataset(),
          initialData: null,
          lazy: false,
          catchError: (context, error) {
            print((error as Error).stackTrace);
          },
        ),
      ],
      child: Consumer<HomepageDataset?>(
        builder: (context, dataset, child) {
          return dataset == null ? Container() : const HomeConsumerWidget();
        },
      ),
    );
  }
}
