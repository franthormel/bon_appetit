import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../services/index.dart';
import '../../../style/index.dart';
import '../../../models/index.dart';

class SearchPageListWidget extends StatelessWidget {
  const SearchPageListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final searchProvider = Provider.of<SearchProvider>(context, listen: false);
    final sourceProvider = Provider.of<DatasetSource>(context, listen: false);

    // TODO: Get results
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(),
      ),
    );
  }
}
