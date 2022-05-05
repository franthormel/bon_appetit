import 'package:bon_appetit/widgets/others/will_pop.dart';
import 'package:flutter/material.dart';

import '../../widgets/index.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopWidget(
      child: Scaffold(
        appBar: AppBar(title: const Text("Search")),
        body: const SearchPageContentWidget(),
      ),
    );
  }
}
