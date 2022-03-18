import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/index.dart';
import '../../services/index.dart';
import '../loading.dart';
import 'multi.dart';

class DataProviderPage extends StatelessWidget {
  const DataProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureProvider<DatasetHomepage?>(
      create: (context) => MockDataService.fetchHomepageDataset(),
      initialData: null,
      lazy: false,
      catchError: (context, error) {
        if (kDebugMode) {
          final e = error as Error;

          print(">>> TITLE \n$e");
          print(">>> Stack \n${e.stackTrace}");
        }

        return null;
      },
      child: Consumer<DatasetHomepage?>(
        builder: (context, dataset, child) =>
            dataset == null ? const LoadingPage() : const MultiProvidersPage(),
      ),
    );
  }
}
