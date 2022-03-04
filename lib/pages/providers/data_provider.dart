import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/index.dart';
import '../../pages/index.dart';
import '../../services/index.dart';
import 'route_provider.dart';

class DataProviderPage extends StatelessWidget {
  const DataProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureProvider<HomepageDataset?>(
      create: (context) => MockDataService.fetchHomepageDataset(),
      initialData: null,
      lazy: false,
      catchError: (context, error) {
        if (kDebugMode) {
          final e = error as Error;

          print(">>> Title $e");
          print(">>> Stack ${e.stackTrace}");
        }

        return null;
      },
      child: Consumer<HomepageDataset?>(
        builder: (context, dataset, child) =>
            dataset == null ? const LoadingPage() : const RouteProviderPage(),
      ),
    );
  }
}
