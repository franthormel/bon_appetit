import 'package:flutter/material.dart';

class SearchPageActionSortWidget extends StatelessWidget {
  const SearchPageActionSortWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: Show options as dropdown menu
    return IconButton(
      tooltip: "Sort results",
      icon: const Icon(Icons.sort),
      onPressed: () {},
    );
  }
}
