import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/index.dart';
import '../services/index.dart';
import '../widgets/index.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final source = Provider.of<DatasetSource>(context, listen: false);

    return ChangeNotifierProvider(
      create: (context) => SearchProvider(source),
      child: Scaffold(
        appBar: AppBar(title: const Text("Search")),
        body: const SearchPageContentWidget(),
      ),
    );
  }
}
