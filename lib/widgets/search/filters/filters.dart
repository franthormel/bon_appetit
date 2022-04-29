import 'package:flutter/material.dart';

import 'dialog/dialog.dart';

class SearchPageFiltersButtonWidget extends StatelessWidget {
  const SearchPageFiltersButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: TextButton.icon(
        label: Text("FILTERS", style: Theme.of(context).textTheme.caption),
        icon: const Icon(Icons.tune),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => const SearchPageFiltersDialogWidget(),
            isScrollControlled: true,
          );
        },
      ),
    );
  }
}
