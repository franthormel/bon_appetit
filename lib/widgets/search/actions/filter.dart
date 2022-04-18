import 'package:flutter/material.dart';

class SearchPageActionFilterWidget extends StatelessWidget {
  const SearchPageActionFilterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: Show as fullscreen bottom sheet with close icon button at upper right
    // https://fidev.io/full-screen-dialog/
    return IconButton(
      tooltip: "Filter results",
      icon: const Icon(Icons.tune),
      onPressed: () {},
    );
  }
}
