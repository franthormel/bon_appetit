import 'package:flutter/material.dart';

class SearchPageActionFilterWidget extends StatelessWidget {
  const SearchPageActionFilterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: Show as fullscreen bottom sheet with close icon button at upper right https://fidev.io/full-screen-dialog/
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: TextButton.icon(
        label: Text("FILTERS", style: Theme.of(context).textTheme.caption),
        icon: const Icon(Icons.tune),
        onPressed: () {},
      ),
    );
  }
}
