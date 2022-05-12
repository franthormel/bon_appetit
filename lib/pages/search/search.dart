import 'package:flutter/material.dart';

import '../../widgets/index.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldedWillPopWidget(
      appBar: AppBar(),
      body: const SearchPageContentWidget(),
    );
  }
}
