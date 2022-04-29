import 'package:bon_appetit/widgets/others/will_pop.dart';
import 'package:flutter/material.dart';

import '../../widgets/index.dart';

class SearchRecipeFiltersPage extends StatelessWidget {
  const SearchRecipeFiltersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const WillPopWidget(
      child: Scaffold(
        body: SearchPageFiltersListWidget(),
        bottomNavigationBar: SearchPageFiltersActionsWidget(),
      ),
    );
  }
}
